--Вывести все события которые как то связаны с водой:
--●	Произошли в странах на островах (Japan, the Marshall Islands, Cuba and Sri Lanka) (посмотрите в таблицу tblCountries)
--●	В колонке EventDetails встречается СЛОВО Water
--●	События относятся к категории Natural World
--В результате должно вернутся 11 строк. После этого отобразите только те события которые произошли не ранее 1970 года.

SELECT *
  FROM [dbo].[tblEvent]
		WHERE	([EventDetails]  LIKE '%Water %' 
				OR [CategoryID]= (SELECT [CategoryID] FROM [dbo].[tblCategory] WHERE [CategoryName]='Natural World')
				OR [CountryID]= (SELECT [CountryID] FROM [dbo].[tblCountry] WHERE [CountryName]='Japan')
				OR [CountryID]= (SELECT [CountryID] FROM [dbo].[tblCountry] WHERE [CountryName]='the Marshall Islands')
				OR [CountryID]= (SELECT [CountryID] FROM [dbo].[tblCountry] WHERE [CountryName]='Cuba')
				OR [CountryID]= (SELECT [CountryID] FROM [dbo].[tblCountry] WHERE [CountryName]='Sri Lanka'))
				AND [EventDate]> CAST('1970-01-01' as date);