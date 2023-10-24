#Create database movies;
Use movies;
CREATE TABLE `ratings` (
  `user_id` text,
  `movie_id` text,
  `rating` float
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

truncate table ratings;

set global local_infile=on;

LOAD DATA LOCAL INFILE 'C:/Users/Sachin_Sripathi/OneDrive/Study/DB Foundations/Major project/The_movies_archive/ratings.csv'
INTO TABLE ratings 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#alter table ratings
#drop column timestamp;

select * from ratings limit 5;

#---------------------------------------------------------------------------------------
drop table movies_metadata;

use movies;
set global local_infile=on;

CREATE TABLE `movies_metadata` (
  `adult` text,
  `budget` bigint,
  `id` text,
  `imdb_id` text,
  `original language` text,
  `original title` text,
  `popularity` double,
  `release_date` date,
  `revenue` bigint,
  `runtime` text,
  `status` text,
  `tag line` text,
  `title` text,
  `video` text,
  `vote average` double,
  `vote count` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

truncate table movies_metadata;

LOAD DATA LOCAL INFILE 'C:/Users/Sachin_Sripathi/OneDrive/Study/DB Foundations/Major project/movies_metadata_1.csv'
INTO TABLE movies_metadata 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from movies_metadata limit 5;