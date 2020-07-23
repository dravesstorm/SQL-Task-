/****** Вывести список информации про авторов, которая включает:
●	Имя автора
●	кол-во эпизодов, которые он создал
●	дата первого созданного им эпизода
●	дата последнего созданного им эпизода
 ******/
SELECT	
		[Author].AuthorName,
		COUNT([dbo].[tblEpisode].EpisodeId) AS Episodes,
		MIN([dbo].[tblEpisode].EpisodeDate) AS [Earliest Date],
		MAX([dbo].[tblEpisode].EpisodeDate) AS [Latest Date]
			FROM 
				[dbo].[tblAuthor] [Author]
				LEFT OUTER JOIN [dbo].[tblEpisode] ON [dbo].[tblEpisode].AuthorId = [Author].AuthorId												
						GROUP BY		
							[Author].AuthorName
							ORDER BY Episodes DESC
				
