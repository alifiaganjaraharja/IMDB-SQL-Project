#1 [First CTE] Write and Define a CTE with a table name DirectorStats
WITH DirectorStats AS (
  SELECT
    Director,
    COUNT(Title) AS TotalMovies,
    AVG(IMDb_rating) AS AverageRating
  FROM `imdb-project-432410.IMDB_Dataset.Movie_02`
  GROUP BY Director
),
#2 [Second CTE] Write and Define a CTE with a table name CorrelationComponents
CorrelationComponents AS (
  SELECT
    SUM(TotalMovies) AS SumX,
    SUM(AverageRating) AS SumY,
    SUM(TotalMovies * AverageRating) AS SumXY,
    SUM(POWER(TotalMovies, 2)) AS SumX2,
    SUM(POWER(AverageRating, 2)) AS SumY2,
    COUNT(Director) AS N
  FROM DirectorStats
)
#3 [Main query/Final query] Finding out the correlation between TotalMovies and Rating with Correation Coefficient
SELECT
    (N * SumXY - SumX * SumY) / 
    (SQRT(N * SumX2 - POWER(SumX, 2)) * SQRT(N * SumY2 - POWER(SumY, 2))) AS CorrelationCoefficient
FROM 
    CorrelationComponents;