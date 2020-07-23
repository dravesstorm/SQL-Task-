/****** Написать запрос который выведет кол-во событий по векам
		******/		
SELECT
		NULL,
		COUNT([Event].EventID) AS [Number events]
			FROM
				[dbo].[tblEvent] [Event]	
UNION ALL
SELECT
		CONCAT(YEAR([Event].[EventDate])/100+1,'th century') AS [Century],
		COUNT([Event].EventID) AS [Number events]
			FROM
				[dbo].[tblEvent] [Event]
					GROUP BY CONCAT(YEAR([Event].[EventDate])/100+1,'th century')
						

