#1 Create a CTE with a name GenreRatings to filter out all of the movies from the last 5 years
WITH GenreRatings AS (
  SELECT
    Genre,
    AVG(IMDb_Rating) AS AverageRating
  FROM `imdb-project-432410.IMDB_Dataset.Movie_02`
  WHERE Year BETWEEN 2019 AND 2024
  GROUP BY Genre
)
#2 [Main Query] Select Genre, AverageRating, and calculate the rank
SELECT
  Genre,  
  AverageRating,
  RANK() OVER (ORDER BY AverageRating DESC) AS GenreRank
FROM 
  GenreRatings
ORDER BY 
  GenreRank;
