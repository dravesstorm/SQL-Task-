/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
SELECT TOP (5) 
      [EventName] AS [What]
      ,[EventDetails] AS [Details]
  FROM [dbo].[tblEvent]
		ORDER BY [EventDate] 