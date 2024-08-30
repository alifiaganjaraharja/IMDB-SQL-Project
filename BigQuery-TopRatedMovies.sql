SELECT Title, IMDb_rating, Year
FROM `imdb-project-432410.IMDB_Dataset.Movie_02`
WHERE IMDb_rating >= 8.0
ORDER BY IMDb_rating DESC;