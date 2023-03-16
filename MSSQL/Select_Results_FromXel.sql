
	DECLARE @file_path NVARCHAR(MAX) = 'D:\Exchange\TECH_LOG_MSSQL\old\DU_0_133019615703900000.xel';

	-----------------------------
	Select
		n.value('(@name)[1]', 'varchar(50)') as name,
		n.value('(@timestamp)[1]', 'datetime2') AS [timestamp],
		n.value('(data[@name="duration"]/value)[1]', 'bigint') as duration,
		n.value('(data[@name="cpu_time"]/value)[1]', 'bigint') as cpu,
		n.value('(data[@name="row_count"]/value)[1]', 'bigint') as row_count,
		isnull(n.value('(data[@name="statement"]/value)[1]', 'nvarchar(max)'), n.value('(data[@name="batch_text"]/value)[1]', 'nvarchar(max)')) as sql_text
	INTO ##Select_Events
	from (select cast(event_data as XML) as event_data
	from sys.fn_xe_file_target_read_file(@file_path, null, null, null)) ed
	cross apply ed.event_data.nodes('event') as q(n)

	-----------------------------
	SELECT 
		substring(sql_text, CHARINDEX('SELECT', sql_text), 100) sql,
		count(name) count,
		sum(duration) dur,
		sum(cpu) cpu,
		sum(row_count) row,
		substring(sql_text, CHARINDEX('dbo.', sql_text), 100) frm
	INTO ##ProductSummary1
	FROM 
		##Select_Events as data
	Group by 
		substring(sql_text, CHARINDEX('SELECT', sql_text), 100),
		substring(sql_text, CHARINDEX('dbo.', sql_text), 100)

	-------------------------
	Select 
		* 
	INTO ##result
	from ##ProductSummary1
	where 
		dur > 10000000
	Order by 
		count desc

	------------------------
	Select * from ##result

	------------------------
	--Insert into [LOG_TMP_DB].[dbo].[Select_Results] 
 
		Select 
			r.sql, r.count, r.dur, r.cpu, r.row, 
			max(e.sql_text) source,
			max(e.timestamp) timestamp,
			r.frm
			from ##result r
		left join ##Select_Events e
			on e.sql_text like '%' + r.sql + '%' 
			and e.sql_text like '%' + r.frm + '%'
		where
			not r.sql is null
		Group by 
			sql, count, dur, r.cpu, row, frm

	------------------------
	DROP TABLE ##ProductSummary1
	DROP TABLE ##result
	DROP TABLE ##Select_Events
	--TRUNCATE TABLE [LOG_TMP_DB].[dbo].[Select_events]
