--Вывести все ивенты в названии которых встречается слово Teletubbies или Pandy

SELECT *
  FROM [dbo].[tblEvent]
		WHERE [EventName]  LIKE '%Teletubbies%' 
		OR [EventName]		LIKE '%Pandy%'