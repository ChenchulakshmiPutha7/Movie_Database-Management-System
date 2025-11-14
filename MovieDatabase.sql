CREATE TABLE directors (
  director_id INT PRIMARY KEY,
  name VARCHAR(100),
  country VARCHAR(50)
);

CREATE TABLE movies (
  movie_id INT PRIMARY KEY,
  title VARCHAR(100),
  release_year INT,
  duration INT,
  director_id INT,
  FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

CREATE TABLE actors (
  actor_id INT PRIMARY KEY,
  name VARCHAR(100),
  gender CHAR(1),
  birth_year INT
);

CREATE TABLE genres (
  genre_id INT PRIMARY KEY,
  genre_name VARCHAR(50)
);

CREATE TABLE movie_genres (
  movie_id INT,
  genre_id INT,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE movie_actors (
  movie_id INT,
  actor_id INT,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
  FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);

CREATE TABLE ratings (
  rating_id INT PRIMARY KEY,
  movie_id INT,
  user_id INT,
  rating DECIMAL(2,1),
  review_date DATE,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

-- Insert data into directors
INSERT INTO directors (director_id, name, country) VALUES
(1, 'Christopher Nolan', 'UK'),
(2, 'Steven Spielberg', 'USA'),
(3, 'Quentin Tarantino', 'USA'),
(4, 'James Cameron', 'Canada'),
(5, 'Greta Gerwig', 'USA'),
(6, 'S. S. Rajamouli', 'India'),
(7, 'Sujeeth', 'India'),
(8, 'Radha Krishna Kumar', 'India'),
(9, 'Prashanth Neel', 'India'),
(10, 'Om Raut', 'India'),
(11, 'Nag Ashwin','India');


-- Insert data into actors
INSERT INTO actors (actor_id, name, gender, birth_year) VALUES
(1, 'Leonardo DiCaprio', 'M', 1974),
(2, 'Deepika Padukone', 'F', 1986),
(3, 'Amitabh Bachchan', 'M', 1942),
(4, 'Disha Patani', 'F', 1992),
(5, 'Nani', 'M', 1984),
(6, 'Saipallavi', 'F', 1998),
(7, 'Matthew McConaughey', 'M', 1969),
(8, 'Anne Hathaway', 'F', 1982),
(9,'Prabhas', 'M', 1980),
(10,'Anushkha Shetty', 'F',1981);

-- Insert data into genres
INSERT INTO genres (genre_id, genre_name) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Drama'),
(4, 'Sci-Fi'),
(5, 'Thriller'),
(6, 'Comedy'),
(7, 'Romantic'),
(8, 'Horror'),
(9, 'Horror+Comedy'),
(10,'Sad');

-- Insert data into movies
INSERT INTO movies (movie_id, title, release_year, duration, director_id) VALUES
(1, 'Inception', 2010, 148, 1),
(2, 'Interstellar', 2014, 169, 1),
(3, 'The Dark Knight', 2008, 152, 1),
(4, 'Titanic', 1997, 195, 4),
(5, 'Pulp Fiction', 1994, 154, 3),
(6, 'Barbie', 2023, 114, 5),
(7, 'Saving Private Ryan', 1998, 169, 2),
(8, 'Avatar', 2009, 162, 4),
(9, 'Salar', 2024, 150, 9),
(10, 'Kalki', 2025, 180, 11);

-- Insert data into movie_genres (many-to-many)
INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1, 1), (1, 4), (1, 5),
(2, 2), (2, 3), (2, 4),
(3, 1), (3, 5),
(4, 3), (4, 5),
(5, 1), (5, 3), (5, 5),
(6, 2), (6, 3),
(7, 1), (7, 2), (7, 3),
(8, 2), (8, 4),
(9, 1), (9, 2),
(10, 7), (10, 8);         

-- Insert data into movie_actors (many-to-many)
INSERT INTO movie_actors (movie_id, actor_id) VALUES
(1, 1), (1, 4), (1, 8),
(2, 1), (2, 8),
(3, 7), (3, 4),
(4, 1), (4, 5),
(5, 1), (5, 2), (5, 4),
(6, 5), (6, 3),
(7, 6), (7, 2),
(8, 3), (8, 4),
(10, 3), (10, 9);

-- Insert data into ratings
INSERT INTO ratings (rating_id, movie_id, user_id, rating, review_date) VALUES
(1, 1, 101, 9.0, '2024-01-10'),
(2, 1, 102, 8.8, '2024-01-12'),
(3, 2, 103, 8.6, '2024-02-05'),
(4, 2, 104, 9.1, '2024-03-15'),
(5, 3, 105, 9.2, '2024-04-18'),
(6, 4, 106, 8.0, '2024-05-01'),
(7, 5, 107, 8.9, '2024-06-22'),
(8, 5, 108, 9.3, '2024-07-09'),
(9, 6, 109, 7.5, '2024-08-10'),
(10, 7, 110, 8.7, '2024-09-11'),
(11, 8, 111, 8.5, '2024-10-01'),
(12, 8, 112, 8.9, '2024-10-15');
