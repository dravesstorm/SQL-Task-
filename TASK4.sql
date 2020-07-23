/****** Напишите 2 Select запрос и выведите 2 первых и 2 последних события из таблицы tblEvent отсортированых по дате.  ******/
SELECT TOP (2) 
      [EventName] AS [What]
      ,[EventDate] AS [When]
  FROM [dbo].[tblEvent]
		ORDER BY [EventDate]  ASC

SELECT TOP (2) 
      [EventName] AS [What]
      ,[EventDate] AS [When]
  FROM [dbo].[tblEvent]
		ORDER BY [EventDate] DESC