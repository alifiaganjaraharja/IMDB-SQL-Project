# IMDB-SQL-Project
By Alifia Ganjaraharja

## Project Overview :
This repository is about the SQL analysis of the IMDB Movie dataset, used as part of my portfolio to showcase my SQL skills. It includes folders containing the data, SQL queries, data visualizations, and a couple of results and insights I have found from this analysis regarding movies.

Read below to find out more.

## Dataset Description :
For this project, there are two CSV files in the 'data' folder of this repository. The IMDB dataset I used is from Kaggle. For data preparation, I cleaned the data by removing duplicate entries and unnecessary columns using Google Sheets.

## SQL Queries :
For this analysis, I used SQL (specifically BigQuery) to practice my skills in writing queries. There are four SQL scripts in this repository, each focused on the following:

1. Ranking directors by their total number of movies (using a CTE query to calculate the total movies for each director, followed by the main query to rank the directors).
2. Determining if there is a correlation between the total number of movies each director has made and their IMDB rating (using two CTE queries: the first to count the total movies and find the average IMDB rating, and the second to calculate the correlation coefficient, followed by the main query to find the correlation coefficient number).
3. Ranking the most popular movie genres from the last five years (using a CTE query to filter out movies released in the past five years, followed by the main query to rank the genres).
4. Finding top-rated movies in general and filtering for movies with an IMDB rating of at least 8.00.


## Results and Insights :
What you found from the data


## How to Run the Project  :
Instructions for others to replicate your work.
