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
At first, I assumed that there is a correlation between the total number of movies produced by a director and the IMDB rating. My hypothesis is: **The more movies a director produces, the higher the IMDB rating they receive.** To determine if my hypothesis was correct, I calculated the correlation coefficient between these two metrics (total movies and average IMDB rating).

To interpret the result:
1. A **positive correlation coefficient close to +1** would indicate that *directors who produce more movies tend to have higher average ratings*.
2. A **negative correlation coefficient close to -1** would indicate that *directors who produce more movies tend to have lower average ratings*.
3. A **coefficient close to 0** would suggest *no significant relationship between the number of movies produced and the average rating*.

Turned out, the result of the Correlation Coefficient number is **r = 0.163** which indicates that there is a slight positive correlation, but it is very weak, suggesting that **the number of movies a director produces does not have a significant impact on the average IMDB rating of their movies**.

There may be other factors that affect the higher ratings some directors receive, which could lead to further potential analyses.

Next, I wanted to find out which movie genre has been the most popular since 2019. As we know, 2019 marks the beginning of the pandemic, and I assumed that most people, being obligated to stay at home, spent more time watching movies. So, I wondered what the top 10 movie genres released from 2019 to 2024 were.

The result .... [insert more caption to direct to the Data Visualization]

Lastly, I wanted to identify the top-rated movies in general. Movies with an IMDb rating of at least 8.0 are considered top-rated.

The result, ... [insert more caption about this]

## How to Run the Project  :
Instructions for others to replicate your work.
