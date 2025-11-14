🎬 MOVIE RATING & RECOMMENDATION DATABASE

A complete SQL project that models movies, directors, actors, genres, and user ratings using a fully normalized relational database structure.



📌 PROJECT OVERVIEW

This project showcases a well-structured SQL database built for analyzing and recommending movies.
It includes:

Directors & their films
Movies with genres and cast
Actors and their filmography
User ratings
Many-to-many relationships
15 powerful SQL queries for analysis.



🛠️ DATABASE STRUCTURE (ER DIAGRAM SUMMARY)

Tables                          included:

Table Name	                     Description
directors	                 Stores director details
movies	                   Stores movie information
actors	                        Actor details
genres	                      Genre master table
movie_genres	           Many-to-many (movies ↔ genres)
movie_actors	           Many-to-many (movies ↔ actors)
ratings	                    User ratings and reviews



💾 FEATURES OF THE PROJECCT

✔️ Fully Normalized Database

--> No data duplication
--> Proper foreign key relationships
--> Clean & scalable design

✔️ Realistic Movie Data Included

Hollywood + Indian cinema
--> Inception
--> Interstellar
--> Titanic
--> Salaar
--> Kalki
--> Baahubali Directors, actors, etc.

✔️ 15 SQL Queries Included

You will find useful analytical queries such as:

--> Top-rated movies
--> Movies by genre
--> Actor popularity
--> Director performance
--> Ranking movies
--> Movies with average ratings



📂 PROJECT FILES

File	                                        Purpose

MovieDatabase.sql	                     SQL code (tables + data)
Movie_Database_Queries.sql                SQL code (Queries)
README.md	                                  Documentation



🚀 HOW TO RUN THIS PROJECT

Install any SQL database system
- MySQL
- MariaDB
- PostgreSQL (small changes needed)
- Open your SQL console or GUI tool:
- MySQL Workbench
- phpMyAdmin
- VS Code with SQL extension
- Copy–paste the full SQL script into your SQL editor.
- Run the script to generate all tables and insert data.
- Execute the analytical queries.
