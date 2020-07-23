/****** Вывести список стран на которых не произошло ни одного события 
		(Подсказка: в результате вы должны получить страну с 4 показателем
		числености населения на планете земля) ******/
SELECT	
		[Country].[CountryID],
		[Country].[CountryName],
		COUNT([dbo].[tblEvent].EventID) as EventTotalCount
			FROM 
				[dbo].[tblCountry] [Country]
				LEFT OUTER JOIN [dbo].[tblEvent] ON [dbo].[tblEvent].[CountryID] = [Country].[CountryID]												
						GROUP BY		
							[Country].[CountryName],
							[Country].[CountryID]
							HAVING COUNT([dbo].[tblEvent].EventID) = 0
				
