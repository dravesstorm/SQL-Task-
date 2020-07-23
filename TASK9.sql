/****** Из таблицы tblDoctor используя join, выведите всех докторов, которые принимали участие в эпизодах, снятых в 2010  ******/
SELECT	DoctorName,
		COUNT([tblEpisode].EpisodeId) as EpisodeCount
		FROM [dbo].[tblDoctor]
		INNER JOIN [dbo].[tblEpisode] ON [dbo].[tblEpisode].DoctorId = [dbo].[tblDoctor].DoctorId
		WHERE [EpisodeDate] BETWEEN CAST('2010-01-01' as date) AND CAST('2010-12-31' as date)
			GROUP BY DoctorName
			
		
	