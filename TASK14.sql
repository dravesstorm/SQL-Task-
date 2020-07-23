--Напишите запрос, который выведет следующую статистику
--●	количество событий для категорий которые начинаются на одну букву
--●	средняя длинна названия события для таких категорий

SELECT 
		LEFT([Category].CategoryName,1) AS [Category initial],
		COUNT([Event].EventID) AS [Number of events],
		FORMAT(AVG(CAST(LEN([Event].EventName) AS REAL)), 'N6') AS [Averege event name length]
		FROM
			[dbo].[tblEvent] [Event],
			[dbo].[tblCategory] [Category]
				WHERE 
					[Event].CategoryID=[Category].CategoryID
					GROUP BY
						LEFT([Category].CategoryName,1)