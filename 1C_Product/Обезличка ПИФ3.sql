
use [OFG_Avancore_PIF_3_TEST_4]

-- Справочник.Контрагенты
update 
[dbo].[_Reference75X1]

Set
 _Description = LEFT(NEWID(), 8)
	,_Fld10302 = null
	,_Fld10304 = null
	,_Fld10303 = null
	,_Fld10278 = null
	,_Fld10275 = LEFT(NEWID(), 8)
	,_Fld10291 = null
	,_Fld16608 = null
	,_Fld16609 = null
	,_Fld14362 = null
	,_Fld10277 = LEFT(NEWID(), 8)
	,_Fld10276 = LEFT(NEWID(), 8)
	,_Fld10270 = LEFT(NEWID(), 8)
	,_Fld10287 = null
	,_Fld10285 = LEFT(NEWID(), 8)
	,_Fld10286 = LEFT(NEWID(), 8)
	,_Fld10288 = LEFT(NEWID(), 8)
	,_Fld10292 = null
	, _Fld10309 = LEFT(NEWID(), 8)

--where 
--_Code <> 000000002
--_Code = 000020839


-- Справочник.Контрагенты - история 
 TRUNCATE table [dbo].[_Reference75_VT10311X1]
 TRUNCATE table [dbo].[_Reference75_VT10330x1]
 TRUNCATE table [dbo].[_Reference75_VT10334x1]
 TRUNCATE table [dbo].[_Reference75_VT10338X1]


 -- Справочник.ФизическиеЛица
update 
 [dbo].[_Reference149]
Set
[_Description] = LEFT(NEWID(), 8)
,[_Fld11416] = LEFT(NEWID(), 8)
,[_Fld11417] = LEFT(NEWID(), 8)
,[_Fld11418] = LEFT(NEWID(), 8)
,[_Fld11419] = LEFT(NEWID(), 8)
,[_Fld11422] = LEFT(NEWID(), 8)
,[_Fld11424] = LEFT(NEWID(), 8)
,[_Fld11425] = LEFT(NEWID(), 8)
,[_Fld11426] = LEFT(NEWID(), 8)
,[_Fld11427] = 'f'
--where _Code = 0000002752

-- Справочник.ФизическиеЛица.КонтактнаяИнформация
TRUNCATE table [dbo]._Reference149_VT11429

-- РегистрСведений.ДокументыФизическихЛиц
TRUNCATE table [dbo]._InfoRg7416

-- РегистрСведений.ФИОФизическихЛиц
TRUNCATE table [dbo]._InfoRg9068

-- Справочник.БанковскиеСчета
update
	[dbo].[_Reference30]
Set
	[_Description] = LEFT(NEWID(), 8)
	,[_Fld9597] = LEFT(NEWID(), 8)
    ,[_Fld9605] = LEFT(NEWID(), 8)


-- Справочник.Портфели
update
	[dbo].[_Reference101X1]
Set
	[_Description] = LEFT(NEWID(), 8)
	,[_Fld10708] = LEFT(NEWID(), 8)
    ,[_Fld14473] = LEFT(NEWID(), 8)


-- Документ.АнкетаПайщика
update
	[dbo].[_Document157]
Set
	   [_Fld572] = 'no info'
      ,[_Fld17522] = LEFT(NEWID(), 8)
      ,[_Fld548] = LEFT(NEWID(), 8)
      ,[_Fld549] = LEFT(NEWID(), 8)
      ,[_Fld555] = LEFT(NEWID(), 8)
      ,[_Fld539] = LEFT(NEWID(), 8)
      ,[_Fld546] = LEFT(NEWID(), 8)
      ,[_Fld544] = LEFT(NEWID(), 8)


-- Документ.АнкетаПайщика.КонтактнаяИнформация
TRUNCATE table [dbo].[_Document157_VT22432]


-- Документ.ПлатежноеПоручение
update
	 [dbo].[_Document220X1]
Set
	[_Fld2570] = LEFT(NEWID(), 8)
	,[_Fld2572]= LEFT(NEWID(), 8)
	,[_Fld2573]= LEFT(NEWID(), 8)
	,[_Fld2574]= LEFT(NEWID(), 8)
	,[_Fld2575]= LEFT(NEWID(), 8)
	,[_Fld2576]= LEFT(NEWID(), 8)
	,[_Fld2577]= LEFT(NEWID(), 8)
	,[_Fld2578]= LEFT(NEWID(), 8)
	,[_Fld2579]= LEFT(NEWID(), 8)
	,[_Fld2580]= LEFT(NEWID(), 8)

  -- Документ.ПлатежноеПоручениеТРСЧЕТ
 update
	 [dbo].[_Document221]
Set
	[_Fld2613] = LEFT(NEWID(), 8)
	,[_Fld2617]= LEFT(NEWID(), 8)
	,[_Fld2624]= LEFT(NEWID(), 8)
	,[_Fld2626]= LEFT(NEWID(), 8)
	,[_Fld2627]= LEFT(NEWID(), 8)
	,[_Fld2628]= LEFT(NEWID(), 8)
	,[_Fld2629]= LEFT(NEWID(), 8)


-- Документ.ПлатежПоПайщику
update
	[dbo].[_Document222]
Set
	[_Fld2656] = LEFT(NEWID(), 8)


-- Документ.ПоступлениеНаРасчетныйСчет
update
	[dbo].[_Document228]
Set
	[_Fld2854] = LEFT(NEWID(), 8)
	,[_Fld2861] = LEFT(NEWID(), 8)


-- Документ.ПоступлениеНаРасчетныйСчет.РеквизитыКонтрагента
update
	[dbo].[_Document228_VT2902]
Set
	[_Fld2905] = LEFT(NEWID(), 8)


-- ЖурналДокументов.ЖурналОперацийСДенежнымиСредствами
update
	[dbo].[_DocumentJournal6706]
Set
	[_Fld6712] = LEFT(NEWID(), 8)
	,[_Fld6714] = LEFT(NEWID(), 8)


-- Документ.ПоступлениеНаТранзитныйСчет
update
	[dbo].[_Document229]
Set
	[_Fld2926] = LEFT(NEWID(), 8)
    ,[_Fld2929]= LEFT(NEWID(), 8)

-- Документ.ПоступлениеНаТранзитныйСчет.РеквизитыКонтрагента
update 
	[dbo].[_Document229_VT2933]
Set
	[_Fld2935] = LEFT(NEWID(), 8)
    ,[_Fld2936]= LEFT(NEWID(), 8)

  
-- Документ.СписаниеСРасчетногоСчета
update 
	[dbo].[_Document258]
Set
	[_Fld5955] = LEFT(NEWID(), 8),
	[_Fld5957] = LEFT(NEWID(), 8)