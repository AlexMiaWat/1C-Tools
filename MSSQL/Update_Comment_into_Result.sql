
UPDATE [LOG_TMP_DB].[dbo].[Select_Results]  
SET 
	[comment] = '����������������.RGN_88_�������������������������_7.�������������'
FROM 
	[LOG_TMP_DB].[dbo].[Select_Results]
WHERE 
	
	sql like 
		'%CASE WHEN T1._Q_000_F_002_TYPE IN (0x01, 0x0%'

	and	
	
	frm like
		'%dbo._Reference176X1 T6%'
