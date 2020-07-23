/******Выведите id и имя последних 3 категорий из таблицы tblCategory в алфавитном порядке******/

SELECT TOP (3) [CategoryID]
	,[CategoryName]
		FROM [dbo].[tblCategory]
			ORDER BY [CategoryID] DESC, [CategoryName] ASC