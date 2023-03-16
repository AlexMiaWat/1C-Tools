USE [LOG_TMP_DB]
GO

/****** Object:  Table [dbo].[Select_Results]    Script Date: 16.11.2022 13:04:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Select_Results](
	[sql] [varchar](200) NULL,
	[count] [bigint] NOT NULL,
	[dur] [decimal](20, 0) NULL,
	[cpu] [decimal](20, 0) NULL,
	[row] [bigint] NOT NULL,
	[source] [nvarchar](max) NOT NULL,
	[timestamp] [datetimeoffset](7) NULL,
	[frm] [varchar](200) NULL,
	[comment] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


