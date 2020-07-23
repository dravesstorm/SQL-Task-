/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
SELECT [EventID]
      ,[EventName]
      ,[EventDate]
  FROM [dbo].[tblEvent]
		ORDER BY [EventDate] DESC