CREATE DATABASE netflix_db;
USE netflix_db;

SELECT * FROM netflix_titles;
SELECT COUNT(*) FROM netflix_titles;

CREATE TABLE netflix_titles (
    show_id VARCHAR(20),
    type VARCHAR(20),
    title TEXT,
    director TEXT,
    casts TEXT,
    country TEXT,
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(20),
    listed_in TEXT,
    description TEXT
);


SELECT COUNT(*) FROM netflix_titles;
SELECT type, COUNT(*) AS total_count
FROM netflix_titles
GROUP BY type;

SELECT type, rating, COUNT(*) AS total
FROM netflix_titles
GROUP BY type, rating
ORDER BY total DESC;

SELECT title
FROM netflix_titles
WHERE type = 'Movie'
AND release_year = 2020;

SELECT country, COUNT(*) AS total_content
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_content DESC
LIMIT 5;

SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie'
ORDER BY REPLACE(duration,' min','') + 0 DESC
LIMIT 1;

SELECT *
FROM netflix_titles
WHERE release_year >= YEAR(CURDATE()) - 5;

SELECT *
FROM netflix_titles
WHERE director = "Rajiv Chilaka";

SELECT title, duration
FROM netflix_titles
WHERE type = 'TV Show'
AND CAST(REPLACE(duration,' Seasons','') AS UNSIGNED) > 5;

SELECT listed_in, COUNT(*) AS total_content
FROM netflix_titles
GROUP BY listed_in
ORDER BY total_content DESC;

SELECT release_year, COUNT(*) AS avg_content
FROM netflix_titles
WHERE country LIKE '%India%'
GROUP BY release_year
ORDER BY avg_content DESC
LIMIT 5;

SELECT title
FROM netflix_titles
WHERE listed_in LIKE '%Documentaries%';

SELECT title
FROM netflix_titles
WHERE listed_in ="Documentaries";

SELECT title
FROM netflix_titles
WHERE director IS NULL
OR director = '';

SELECT COUNT(*) AS total_movies
FROM netflix_titles
WHERE casts LIKE '%Salman Khan%'
AND release_year >= YEAR(CURDATE()) - 10;

SELECT casts, COUNT(*) AS movie_count
FROM netflix_titles
WHERE country LIKE '%India%'
GROUP BY casts
ORDER BY movie_count DESC
LIMIT 10;

SELECT 
CASE
    WHEN description LIKE '%kill%'
      OR description LIKE '%violence%'
    THEN 'Bad'
    ELSE 'Good'
END AS category,
COUNT(*) AS total_content
FROM netflix_titles
GROUP BY category;


