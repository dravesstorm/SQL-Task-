/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
SELECT 
		[EventID]
      ,[EventName]
      ,[EventDetails]
      ,[EventDate]
      ,[CountryID]
      ,[CategoryID]
  FROM [dbo].[tblEvent]
		WHERE [CategoryID]= (SELECT CategoryID
								FROM [dbo].[tblCategory]
									WHERE [CategoryName]='Love and relationships')