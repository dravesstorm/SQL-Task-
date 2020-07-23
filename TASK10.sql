
SELECT
		[A].AuthorName,
		[Ep].Title,
		[D].DoctorName,
		[En].EnemyName,
		COUNT([Ep].[EpisodeId]) AS TotalCount
			FROM 
				[dbo].[tblAuthor] [A],
				[dbo].[tblEpisode] [Ep],
				[dbo].[tblDoctor] [D],
				[dbo].[tblEnemy] [En],
				[dbo].[tblEpisodeEnemy]
					WHERE
						[En].EnemyId=[dbo].[tblEpisodeEnemy].EnemyId
					AND [Ep].DoctorId=[D].DoctorId
					AND [Ep].AuthorId = [A].AuthorId
					AND [dbo].[tblEpisodeEnemy].EpisodeId=[Ep].EpisodeId
					AND LEN([A].AuthorName)+LEN([Ep].Title)+LEN([D].DoctorName)+LEN([En].EnemyName)<40
						GROUP BY 
								[Ep].Title,
								[A].AuthorName,								
								[D].DoctorName,
								[En].EnemyName