------------------------
 SELECT 
	substring(sql_text, CHARINDEX('SELECT', sql_text), 100) sql,
	count(name) count,
	sum(duration) dur,
	sum(cpu_time) cpu,
	sum(row_count) row,
	substring(sql_text, CHARINDEX('dbo.', sql_text), 100) frm
INTO ##ProductSummary1
FROM [LOG_TMP_DB].[dbo].[Select_events]
Group by 
	substring(sql_text, CHARINDEX('SELECT', sql_text), 100),
	substring(sql_text, CHARINDEX('dbo.', sql_text), 100)

-------------------------
 Select * 
 INTO ##result
 from ##ProductSummary1
 where dur > 20000000
 Order by count desc

 ------------------------
--Insert into [LOG_TMP_DB].[dbo].[Select_Results] 
 
	Select 
		r.sql, r.count, r.dur, r.cpu, r.row, 
		max(e.sql_text) source,
		max(e.timestamp) timestamp,
		r.frm
		from ##result r
	left join [LOG_TMP_DB].[dbo].[Select_events] e
		on e.sql_text like '%' + r.sql + '%' 
		and e.sql_text like '%' + r.frm + '%'
	Group by 
		sql, count, dur, cpu, row, frm

 ------------------------
DROP TABLE ##ProductSummary1
DROP TABLE ##result
--TRUNCATE TABLE [LOG_TMP_DB].[dbo].[Select_events]
 