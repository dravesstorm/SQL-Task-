/****** ¬ывести кол-во событий дл€ каждого континента и страны
		ѕосле этого исключить страны которые распологаютс€ в ≈вропе
		ѕосле этого вывести только те строки, кол-во событий которых превышают 5
		******/						
				
 SELECT  
	[Continent].[ContinentName], 
	[Country].[CountryName], 	
	COUNT([Event].EventID) AS [Number of events]
		FROM 
		[dbo].[tblContinent] [Continent],
		[dbo].[tblCountry] [Country],
		[dbo].[tblEvent] [Event]
			WHERE
			([Event].CountryID = [Country].CountryID
			OR [Continent].ContinentID = [Country].CountryID)
			AND [Continent].ContinentName!='Europe'
				GROUP BY
				[Country].[CountryName],
				[Continent].[ContinentName]
						HAVING COUNT([Event].EventID)>5
							ORDER BY COUNT([Event].EventID) DESC;