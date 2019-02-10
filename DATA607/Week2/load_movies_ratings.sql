DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS raters;
DROP TABLE IF EXISTS ratings;

CREATE TABLE movies (
  movie_name varchar(50) PRIMARY KEY,
  studio varchar(30) NOT NULL,
  release_date date
  );
  
LOAD DATA INFILE 'c:/data/movies/movies.csv' 
INTO TABLE movies 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(movie_name, studio, release_date)
;

CREATE TABLE raters (
  first_name varchar(30) NOT NULL,
  last_name varchar(30)  NOT NULL,
  birth_date date,
  relationship varchar(20)
  );
  
LOAD DATA INFILE 'c:/data/movies/raters.csv' 
INTO TABLE raters
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(first_name, last_name, birth_date, relationship)
;

CREATE TABLE ratings (
  movie_name varchar(50) NOT NULL,
  rater_firstname varchar(30) NOT NULL,
  rater_lastname varchar(30) NOT NULL,
  rating  int NOT NULL
  );
  
LOAD DATA INFILE 'c:/data/movies/ratings.csv' 
INTO TABLE ratings 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(movie_name, rater_firstname, rater_lastname, rating)
;

select * from movies;
select * from raters;
select * from ratings;

# INSERT INTO movies (movie_name, studio, release_date) VALUES ( "Aquaman","WB",2018-12-21);