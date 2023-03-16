
use [OFG_NSI_DEV]

-- [PERSONS]
update [dbo].[PERSONS]
Set
	  [FAM]	= LEFT(NEWID(), 8)
      ,[NAME]	= LEFT(NEWID(), 8)
      ,[OTCHESTVO]	= LEFT(NEWID(), 8)
      ,[DOCSERIES]	= LEFT(NEWID(), 8)
      ,[DOCNUMBER]	= LEFT(NEWID(), 8)
      ,[DOCISSUER]	= LEFT(NEWID(), 8)
      
      ,[INN]	= LEFT(NEWID(), 8)
      ,[BIRTHPLACE]	= LEFT(NEWID(), 8)
      ,[ADDRESSLEGAL]	= ''
      ,[ADDRESSFACT]	= ''
      ,[PHONENUMBER]	= LEFT(NEWID(), 8)
      ,[EMAIL]	= LEFT(NEWID(), 8)
	  ,[ADDRESSLEGALID] = null
	  ,[ADDRESSFACTID] = null
      

-- [PERSONS_HISTORY]
update [dbo].[PERSONS_HISTORY]
Set
      [FAM]= LEFT(NEWID(), 8)
      ,[NAME]= LEFT(NEWID(), 8)
      ,[OTCHESTVO]= LEFT(NEWID(), 8)
    
      ,[DOCSERIES]= LEFT(NEWID(), 8)
      ,[DOCNUMBER]= LEFT(NEWID(), 8)
      ,[DOCISSUER]= LEFT(NEWID(), 8)
     
      ,[INN]= LEFT(NEWID(), 8)
    
      ,[BIRTHPLACE]= LEFT(NEWID(), 8)
      ,[ADDRESSLEGAL]= LEFT(NEWID(), 8)
      ,[ADDRESSFACT]= LEFT(NEWID(), 8)
      ,[PHONENUMBER]= LEFT(NEWID(), 8)
      ,[EMAIL]= LEFT(NEWID(), 8)
     
      ,[ADDRESSLEGALID] = null
      ,[ADDRESSFACTID]= null
    

 where ID = 1

-- ADDRESSES
TRUNCATE table [dbo].[ADDRESSES]