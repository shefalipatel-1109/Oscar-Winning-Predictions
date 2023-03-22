-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/UmklaO
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE movies (
    movie_id int   NOT NULL,
    movie_name varchar(100)   NOT NULL,
    release_year int   NOT NULL,
    original_release_date date   NULL,
    movie_length int   NOT NULL,
    genre varchar(50)   NOT NULL,
    rating varchar(10)   NOT NULL,
    movie_producer varchar(100)   NOT NULL,
    movie_director varchar(100)   NOT NULL,
    movie_actor varchar(3000)   NOT NULL,
    CONSTRAINT pk_movies PRIMARY KEY (
        movie_id
     )
);

CREATE TABLE movie_ratings (
    movie_id int   NOT NULL,
    imdb_rating dec   NOT NULL,
    imdb_votes int   NOT NULL,
    tomatometer_rating int   NOT NULL,
    tomatometer_count int   NOT NULL,
    audience_rating int   NOT NULL,
    audience_count int   NOT NULL,
    CONSTRAINT pk_movie_ratings PRIMARY KEY (
        movie_id
     )
);

CREATE TABLE oscar_details (
    movie_id int   NOT NULL,
    oscar_year int   NOT NULL,
    award varchar(20)   NOT NULL,
    CONSTRAINT pk_oscar_details PRIMARY KEY (
        movie_id
     )
);

CREATE TABLE movie_revenue (
    movie_id int   NOT NULL,
    us_gross_income dec   NOT NULL,
    worldwide_gross_income dec   NOT NULL,
    production_budget dec   NOT NULL,
    CONSTRAINT pk_movie_revenue PRIMARY KEY (
        movie_id
     )
);

ALTER TABLE movie_ratings ADD CONSTRAINT fk_movie_ratings_movie_id FOREIGN KEY(movie_id)
REFERENCES movies (movie_id);

ALTER TABLE oscar_details ADD CONSTRAINT fk_oscar_details_movie_id FOREIGN KEY(movie_id)
REFERENCES movies (movie_id);

ALTER TABLE movie_revenue ADD CONSTRAINT fk_movie_revenue_movie_id FOREIGN KEY(movie_id)
REFERENCES movies (movie_id);

