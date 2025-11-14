--- 1. Display all movies
SELECT * FROM movies;

--- 2. Show all directors from India
SELECT name FROM directors WHERE country = 'India';

--- 3. List movies released after 2020
SELECT title, release_year FROM movies WHERE release_year > 2020;

--- 4. Get all unique genres
SELECT DISTINCT genre_name FROM genres;

--- 5. Find movies directed by “S. S. Rajamouli”
SELECT title FROM movies m
JOIN directors d ON m.director_id = d.director_id
WHERE d.name = 'S. S. Rajamouli';

--- 6. Show movies and their directors
SELECT m.title, d.name AS director
FROM movies m
JOIN directors d ON m.director_id = d.director_id;

--- 7. Count number of movies by each director
SELECT d.name AS director, COUNT(m.movie_id) AS total_movies
FROM directors d
LEFT JOIN movies m ON d.director_id = m.director_id
GROUP BY d.name;

--- 8. Find average movie rating
SELECT AVG(rating) AS avg_rating FROM ratings;

--- 9. Get top 5 movies by rating
SELECT m.title, r.rating
FROM movies m
JOIN ratings r ON m.movie_id = r.movie_id
ORDER BY r.rating DESC
LIMIT 5;

--- 10. Show all movies and their genres
SELECT m.title, g.genre_name
FROM movies m
JOIN movie_genres mg ON m.movie_id = mg.movie_id
JOIN genres g ON mg.genre_id = g.genre_id
ORDER BY m.title;

--- 11. Find actors who acted in more than one movie
SELECT a.name, COUNT(ma.movie_id) AS movie_count
FROM actors a
JOIN movie_actors ma ON a.actor_id = ma.actor_id
GROUP BY a.name
HAVING COUNT(ma.movie_id) > 1;

--- 12. Find the highest-rated movie of each director
SELECT d.name AS director, m.title, MAX(r.rating) AS top_rating
FROM directors d
JOIN movies m ON d.director_id = m.director_id
JOIN ratings r ON m.movie_id = r.movie_id
GROUP BY d.name, m.title
ORDER BY top_rating DESC;

--- 13. Show Prabhas movies with average rating
SELECT m.title, AVG(r.rating) AS avg_rating
FROM movies m
JOIN movie_actors ma ON m.movie_id = ma.movie_id
JOIN actors a ON ma.actor_id = a.actor_id
JOIN ratings r ON m.movie_id = r.movie_id
WHERE a.name = 'Prabhas'
GROUP BY m.title;

--- 14. Rank all movies by rating
SELECT m.title, r.rating,
       RANK() OVER (ORDER BY r.rating DESC) AS rank_by_rating
FROM movies m
JOIN ratings r ON m.movie_id = r.movie_id;

--- 15. List all actors and the total number of genres they’ve acted in
SELECT a.name, COUNT(DISTINCT g.genre_id) AS total_genres
FROM actors a
JOIN movie_actors ma ON a.actor_id = ma.actor_id
JOIN movie_genres mg ON ma.movie_id = mg.movie_id
JOIN genres g ON mg.genre_id = g.genre_id
GROUP BY a.name
ORDER BY total_genres DESC;


