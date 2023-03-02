-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/UmklaO
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Movies" (
    "movie_ID" int   NOT NULL,
    "movie_name" varchar(50)   NOT NULL,
    "release_year" int   NOT NULL,
    "movie_length" int   NOT NULL,
    "genre" varchar(50)   NOT NULL,
    "rating" varchar(10)   NOT NULL,
    "movie_producer" varchar(100)   NOT NULL,
    "movie_director" varchar(100)   NOT NULL,
    "movie_actor" varchar(100)   NOT NULL,
    "us_gross_income" int   NOT NULL,
    "worldwide_groos_income" int   NOT NULL,
    "production_budget" int   NOT NULL,
    CONSTRAINT "pk_Movies" PRIMARY KEY (
        "movie_ID"
     )
);

CREATE TABLE "Movie_Ratings" (
    "movie_ID" int   NOT NULL,
    "imdb_rating" dec   NOT NULL,
    "imdb_votes" int   NOT NULL,
    "tomatometer_rating" int   NOT NULL,
    "tomatometer_count" int   NOT NULL,
    "audience_rating" int   NOT NULL,
    "audience_count" int   NOT NULL,
    CONSTRAINT "pk_Movie_Ratings" PRIMARY KEY (
        "movie_ID"
     )
);

CREATE TABLE "Oscar_Details" (
    "movie_id" int   NOT NULL,
    "oscar_year" int   NOT NULL,
    "award" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Oscar_Details" PRIMARY KEY (
        "movie_id"
     )
);

ALTER TABLE "Movie_Ratings" ADD CONSTRAINT "fk_Movie_Ratings_movie_ID" FOREIGN KEY("movie_ID")
REFERENCES "Movies" ("movie_ID");

ALTER TABLE "Oscar_Details" ADD CONSTRAINT "fk_Oscar_Details_movie_id" FOREIGN KEY("movie_id")
REFERENCES "Movies" ("movie_ID");

