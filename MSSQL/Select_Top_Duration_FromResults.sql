/****** Script for SelectTopNRows command from SSMS  ******/
SELECT aa.[sql] as 'select'
	  ,sum(aa.[dur]) / sum(aa.[count]) / 1000000 avr_sec
      ,sum(aa.[count]) [count]
      ,sum(aa.[dur]) [dur]

	  ,max(aa.comment) comment

      ,sum(aa.[cpu]) [cpu]
      ,sum(aa.[row]) [row]
      ,max(aa.[source]) [source]
      ,max(aa.[timestamp]) last_time
      ,substring(aa.[frm], 1, 25) as  'from'

FROM [LOG_TMP_DB].[dbo].[Select_Results] as aa

--Where 
--	timestamp > '2022-07-01'
--	sql like '%dbo._InfoRg17664%'

Group By
	aa.sql
	, substring(aa.[frm], 1, 25)

having
	sum(aa.count) > 400
	and max(aa.[source]) like '%dbo.%'

Order by 
	--sum(aa.[dur]) desc,
	sum(aa.[dur]) / sum(aa.[count])  desc
--	sum(cpu) desc