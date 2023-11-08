
use OFG_HOMNET_NFO_TEST

-- Справочник.Контрагенты
update [dbo].[_Reference120]
Set
		[_Description]= LEFT(NEWID(), 8)
      ,[_Fld3006]= LEFT(NEWID(), 8)
      ,[_Fld3011]= LEFT(NEWID(), 8)
      ,[_Fld3012]= LEFT(NEWID(), 8)
      ,[_Fld3013]= LEFT(NEWID(), 8)
      ,[_Fld3014]= LEFT(NEWID(), 8)
      ,[_Fld3023]= LEFT(NEWID(), 8)
      ,[_Fld3024]= LEFT(NEWID(), 8)
      ,[_Fld3025]= LEFT(NEWID(), 8)
      ,[_Fld3026] = LEFT(NEWID(), 8)
	

-- Справочник.Контрагенты - история 
 TRUNCATE table [dbo].[_Reference120_VT27072]
 TRUNCATE table [dbo].[_Reference120_VT3032]
 TRUNCATE table [dbo].[_Reference120_VT3053]
 TRUNCATE table [dbo].[_Reference120_VT3059]

 -- Справочник.ФизическиеЛица
update 
 [dbo].[_Reference343]
Set
[_Description] = LEFT(NEWID(), 8)
      ,[_Fld7764] = LEFT(NEWID(), 8)
      ,[_Fld7765] = LEFT(NEWID(), 8)
      ,[_Fld7766]     = LEFT(NEWID(), 8)
      ,[_Fld7769] = LEFT(NEWID(), 8)
      ,[_Fld7772] = LEFT(NEWID(), 8)
      ,[_Fld7775] = LEFT(NEWID(), 8)
      ,[_Fld7776] = LEFT(NEWID(), 8)
      ,[_Fld7777] = LEFT(NEWID(), 8)
      ,[_Fld43497] = LEFT(NEWID(), 8)
      ,[_Fld7778] = LEFT(NEWID(), 8)

-- КонтактнаяИнформация
update 
 [dbo].[_Reference119]
Set
[_Description] = LEFT(NEWID(), 8)
      ,[_Fld2970] = LEFT(NEWID(), 8)
      ,[_Fld2971] = LEFT(NEWID(), 8)
      ,[_Fld2972] = LEFT(NEWID(), 8)

--TRUNCATE table [dbo].

-- РегистрСведений.ФИОФизическихЛиц
TRUNCATE table [dbo]._InfoRg24540
TRUNCATE table [dbo]._InfoRgChngR24546
TRUNCATE table [dbo]._InfoRgSL41818
TRUNCATE table [dbo]._InfoRgOpt41819

-- РегистрСведений.ДокументыФизическихЛиц
TRUNCATE table [dbo].[_InfoRg20363]

-- Справочник.БанковскиеСчета
update
	[dbo].[_Reference43]
Set
	[_Description] = LEFT(NEWID(), 8)
      ,[_Fld1616] = LEFT(NEWID(), 8)
      ,[_Fld1626] = LEFT(NEWID(), 8)

-- Документ.ПлатежноеПоручение
update
	 [dbo].[_Document478]
Set
	[_Fld13984] = LEFT(NEWID(), 8)
	,[_Fld13986]= LEFT(NEWID(), 8)
	,[_Fld13987]= LEFT(NEWID(), 8)
	,[_Fld13989]= LEFT(NEWID(), 8)
	,[_Fld13990]= LEFT(NEWID(), 8)
	,[_Fld13991]= LEFT(NEWID(), 8)
	,[_Fld13992]= LEFT(NEWID(), 8)

-- Документ.ПоступлениеНаРасчетныйСчет.РасшифровкаП
update
	[dbo]._Document489_VT14390
Set
	[_Fld14393] = LEFT(NEWID(), 8)

-- Документ.ПоступлениеНаРасчетныйСчет
update
	[dbo].[_Document489]
Set
	[_Fld14347] = LEFT(NEWID(), 8)

-- ЖурналДокументов.ЖурналОперацийСДенежнымиСредствами
update
	[dbo].[_DocumentJournal18928]
set [_Fld18938] = '132654'

-- Документ.СписаниеСРасчетногоСчета
update 
	[dbo].[_Document524]
Set
	[_Fld16079] = LEFT(NEWID(), 8)

update 
	[dbo].[_Document524_VT16127]
Set
	[_Fld16130] = LEFT(NEWID(), 8)