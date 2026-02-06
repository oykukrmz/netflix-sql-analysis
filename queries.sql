-- Total number of titles
SELECT COUNT(*) 
FROM netflix_titles;

-- Number of Movies vs TV Shows
SELECT c2 AS type, COUNT(*) AS total
FROM netflix_titles
GROUP BY c2;

-- Titles released from 2020 onwards
SELECT c3 AS title, c8 AS release_year
FROM netflix_titles
WHERE c8 >= 2020;

-- Top 5 countries by number of titles
SELECT c6 AS country, COUNT(*) AS number_of_shows
FROM netflix_titles
WHERE c6 IS NOT NULL
GROUP BY c6
ORDER BY number_of_shows DESC
LIMIT 5;

-- Content type with the highest number of titles
SELECT c2 AS type, COUNT(*) AS number_of_titles
FROM netflix_titles
GROUP BY c2
ORDER BY number_of_titles DESC
LIMIT 1;

-- Countries with at least 100 titles
SELECT c6 AS country, COUNT(*) AS total
FROM netflix_titles
WHERE c6 IS NOT NULL
GROUP BY c6
HAVING COUNT(*) >= 100;
