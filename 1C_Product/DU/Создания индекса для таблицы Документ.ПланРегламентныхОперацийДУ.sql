USE [OFG_Avancore_DU]
GO

SET ANSI_PADDING ON
GO

/****** Object:  Index [NonClusteredIndex-20220411-182143]    Script Date: 27.04.2022 17:10:44 ******/

-- ƒокумент.ѕлан–егламентныхќперацийƒ”--

CREATE NONCLUSTERED INDEX [NonClusteredIndex-20220411-182143] ON [dbo].[_Document279]
(
	[_Date_Time] ASC,
	[_Fld6456RRef] ASC,
	[_Fld6457RRef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


