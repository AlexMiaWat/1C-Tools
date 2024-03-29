USE [LOG_TMP_DB]
GO
/****** Object:  StoredProcedure [dbo].[RIAM_CollectSelectStatisticsFrom1C]    Script Date: 16.11.2022 13:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Voronov AN
-- Create date: 11.07.2022
-- Description:	Collect Select statistics from 1C via xel files
-- =============================================
ALTER PROCEDURE [dbo].[RIAM_CollectSelectStatisticsFrom1C] 
	@file_path	NVARCHAR(500),
	@db_name	NVARCHAR(30)
AS
BEGIN

	SET NOCOUNT ON;

	-- DROP ALL
	if (select count(*) c from tempdb.sys.tables where name like '##Select_Events%')  > 0
		DROP TABLE if exists ##Select_Events

	if (select count(*) c from tempdb.sys.tables where name like '##Select_Events_key%')  > 0
		DROP TABLE if exists ##Select_Events

	if (select count(*) c from tempdb.sys.tables where name like '##ProductSummary1%')  > 0
		DROP TABLE if exists ##ProductSummary1

	if (select count(*) c from tempdb.sys.tables where name like '##result%')  > 0
		DROP TABLE if exists ##result

	--BEGIN TRY 

		Select
			n.value('(@name)[1]', 'varchar(50)') as name,
			n.value('(@timestamp)[1]', 'datetime2') AS [timestamp],
			n.value('(data[@name="duration"]/value)[1]', 'bigint') as duration,
			n.value('(data[@name="cpu_time"]/value)[1]', 'bigint') as cpu,
			n.value('(data[@name="row_count"]/value)[1]', 'bigint') as row_count,

			isnull(
				isnull(n.value('(data[@name="statement"]/value)[1]', 'nvarchar(max)'), 
						n.value('(data[@name="batch_text"]/value)[1]', 'nvarchar(max)')),
							n.value('(data[@name="sql_text"]/value)[1]', 'nvarchar(max)')) as sql_text

		INTO ##Select_Events
		from (select cast(event_data as XML) as event_data
				from sys.fn_xe_file_target_read_file(@file_path, null, null, null)) ed
					cross apply ed.event_data.nodes('event') as q(n)

		-----------------------------

		Select 
			file_data.*,
			substring(file_data.sql_text, CHARINDEX('SELECT', file_data.sql_text), 100) sql,
			substring(file_data.sql_text, CHARINDEX('dbo.', file_data.sql_text), 100) frm
		INTO ##Select_Events_key
		from
			##Select_Events file_data

		-----------------------------

		--CREATE NONCLUSTERED INDEX ##ix_tempNCIndexAft ON ##Select_Events_key (sql, frm)

		-----------------------------
		SELECT 
			data.sql,
			count(name) count,
			sum(duration) dur,
			sum(cpu) cpu,
			sum(row_count) row,
			data.frm
		INTO ##ProductSummary1
		FROM 
			##Select_Events_key as data
		Group by 
			data.sql,
			data.frm

		-------------------------
		Select 
			* 
		INTO ##result
		from ##ProductSummary1
		where 
			--dur > 5000000 -- 5 sec
			dur > 500000 -- 0.5 sec
		Order by 
			count desc

		------------------------
		--Select * from ##result

		------------------------
		Insert into [LOG_TMP_DB].[dbo].[Select_Results] 
 
			Select 
				r.sql, r.count, r.dur, r.cpu, r.row, 
				max(isnull(e.sql_text, r.sql + ' ... ' + r.frm)) source,
				max(e.timestamp) timestamp,
				r.frm,
				''
			from ##result r
			left join ##Select_Events_key e
				on e.sql_text like '%' + r.sql + '%' 
				and e.sql_text like '%' + r.frm + '%'
			where
				not r.sql is null
			Group by 
				r.sql, count, dur, r.cpu, row, r.frm

		------------------------
		
		DROP TABLE if exists ##Select_Events
		DROP TABLE if exists ##Select_Events_key
		DROP TABLE if exists ##ProductSummary1
		DROP TABLE if exists ##result
			
		RETURN 1;

	--END TRY

	--BEGIN CATCH

		-- DROP ALL
		--if (select count(*) c from tempdb.sys.tables where name like '##Select_Events%')  > 0
		--	DROP TABLE ##Select_Events

		--if (select count(*) c from tempdb.sys.tables where name like '##ProductSummary1%')  > 0
		--	DROP TABLE ##ProductSummary1

		--if (select count(*) c from tempdb.sys.tables where name like '##result%')  > 0
		--	DROP TABLE ##result

		---- EXCEPTION  
		--DECLARE @err_msg AS NVARCHAR(MAX);
		--SET @err_msg = ERROR_MESSAGE();
		--THROW 60000, @err_msg, 1; 

		--RETURN 0;

	--END CATCH  
END
