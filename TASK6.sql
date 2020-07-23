/****** Вывести ивенты, которые произошли в феврале 2005 года (должно вернуться 2 ивента  ******/
SELECT 
		[E].EventName
  FROM 
	[dbo].[tblEvent] [E]
		WHERE 
			[E].[EventDate]>=CAST('2005-02-01' as date) 
		AND [E].[EventDate]<=CAST('2005-02-28' as date);
