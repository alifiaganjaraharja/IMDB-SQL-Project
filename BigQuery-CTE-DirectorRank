#1 Define the CTE name with DirectorMovie and count the TotalMovies of each Director
WITH DirectorMovie AS (
  SELECT
  Director,
  COUNT(Title) AS TotalMovies
FROM `imdb-project-432410.IMDB_Dataset.Movie_02`
GROUP BY Director
)
#2 Select Director, TotalMovies, and calculate the rank from TotalMovies
SELECT 
  Director,
  TotalMovies,
  RANK() OVER (ORDER BY TotalMovies DESC) AS DirectorRank
FROM DirectorMovie
ORDER BY DirectorRank
LIMIT 10;