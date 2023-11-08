
use [OFG_Avancore_DU_TEST_5]

-- Справочник.Контрагенты
update [dbo].[_Reference99X1]
Set
		_Description = LEFT(NEWID(), 8)
      ,[_Fld2379] = LEFT(NEWID(), 8)
      ,[_Fld2382] = LEFT(NEWID(), 8)
      ,[_Fld2395] = LEFT(NEWID(), 8)
      ,[_Fld20235] = LEFT(NEWID(), 8)
      ,[_Fld2397] = LEFT(NEWID(), 8)
      ,[_Fld2398] = LEFT(NEWID(), 8)
      ,[_Fld2399] = LEFT(NEWID(), 8)
      ,[_Fld2400] = LEFT(NEWID(), 8)
      ,[_Fld2401] = LEFT(NEWID(), 8)
      ,[_Fld20237] = LEFT(NEWID(), 8)
      ,[_Fld22033] = LEFT(NEWID(), 8)

-- Справочник.Контрагенты - история 
 TRUNCATE table [dbo].[_Reference99_VT2422X1]
 TRUNCATE table [dbo]._Reference99_VT2429X1
 TRUNCATE table [dbo].[_InfoRg14784]

 -- Справочник.ФизическиеЛица
update 
 [dbo].[_Reference191]
Set
[_Description] = LEFT(NEWID(), 8)

-- Справочник.ФизическиеЛица.КонтактнаяИнформация
--TRUNCATE table [dbo].

-- РегистрСведений.ДокументыФизическихЛиц
TRUNCATE table [dbo]._InfoRg14495

-- РегистрСведений.ФИОФизическихЛиц
TRUNCATE table [dbo].[_InfoRg16027]

-- Справочник.БанковскиеСчета
update
	[dbo].[_Reference40X1]
Set
	[_Description] = LEFT(NEWID(), 8)
	,[_Fld1418] = LEFT(NEWID(), 8)

-- Справочник.Портфели
update
	[dbo].[_Reference130X1]
Set
	[_Description] = LEFT(NEWID(), 8)
	,[_Fld3024] = LEFT(NEWID(), 8)
    ,[_Fld3025] = LEFT(NEWID(), 8)

-- Справочник.ЦиклыОбмена
update
	[dbo].[_Reference22765]
Set
	[_Description] = LEFT(NEWID(), 8)

-- РегистрСведений.ИсторияРеквизитовПортфеля
truncate table dbo.[_InfoRg20994]

-- Документ.АнкетаПайщика
update
	[dbo].[_Document19830_VT19841X1]
Set
	[_Fld19844_S] = 'no info'

-- Документ.ПлатежноеПоручение
update
	 [dbo].[_Document280]
Set
	[_Fld6470] = LEFT(NEWID(), 8)
	,[_Fld6471]= LEFT(NEWID(), 8)
	,[_Fld6478]= LEFT(NEWID(), 8)
	,[_Fld6495]= LEFT(NEWID(), 8)
	,[_Fld6496]= LEFT(NEWID(), 8)
	,[_Fld6476]= LEFT(NEWID(), 8)
	,[_Fld6477]= LEFT(NEWID(), 8)
	
	,[_Fld6472]= LEFT(NEWID(), 8)
	,[_Fld6473]= LEFT(NEWID(), 8)
	,[_Fld6474]= LEFT(NEWID(), 8)

-- Документ.ПоступлениеНаРасчетныйСчет.РасшифровкаП
update
	[dbo].[_Document286_VT20206X1]
Set
	[_Fld20324] = LEFT(NEWID(), 8)

-- Документ.ПоступлениеНаРасчетныйСчет
update
	[dbo].[_Document286X1]
Set
	[_Fld6690] = LEFT(NEWID(), 8)

-- ЖурналДокументов.ЖурналОперацийСДенежнымиСредствами
update
	[dbo]._DocumentJournal13783
set _Fld13794 = '132654'

  
-- Документ.СписаниеСРасчетногоСчета
update 
	[dbo].[_Document370X1]
Set
	[_Fld12778]= LEFT(NEWID(), 8)
      ,[_Fld12779]= LEFT(NEWID(), 8)
      ,[_Fld12782]= LEFT(NEWID(), 8)
      ,[_Fld12783]= LEFT(NEWID(), 8)
      ,[_Fld12788]= LEFT(NEWID(), 8)
      ,[_Fld1095] = LEFT(NEWID(), 8)
	  ,[_Fld12823]= LEFT(NEWID(), 8)
      ,[_Fld12824] = LEFT(NEWID(), 8)