# OSCAR WINNING PREDICTIONS

## Proposal

And the Oscar goes to…

Will it be Top Gun: Maverick, Elvis, or the long-awaited sequel Avatar: The Way of Water? How do we know which will be the next Oscar winning film?  This “Oscar-winning” proposal seeks to answer these questions. Using the datasets we retrieved, we seek to determine the most influential factors that determine an Oscar winning movie and to build a predictive model that can potentially forecast winners in the future.

## Data Set
[Oscar Best Motion Picture Data](https://www.kaggle.com/datasets/martinmraz07/oscar-movies) - This dataset contains the Oscar Best Picture winners and nominees. Additionally, the data contains IMDB and Rotten Tomato ratings.

[Movie Revenue Data](https://cdn.jsdelivr.net/npm/vega-datasets@2.5.4/data/movies.json) - This dataset contains the Gross Income (US & Worldwide) and Production Budget for movies.

## Group Roles :

- Database Design and Maintenance - Parna Kundu
- Exploratory Data Analysis & Design - Hima Surisetti
- Machine Learning Model & GitHub Repo - Shefali Patel
- Visualization and Dashboard Designing - Priyanka Patel

## Understanding the Data

 The Dataset includes these main fetaures which we use for our analysis :
 
 - movie_id: Unique identifier for each movie.
 - movie_name: Name of the movie.
 - release_year: The year the movie was released.
 - original_release_date: The original release date of the movie.
 - movie_length: The length of the movie in minutes.
 - genre: A comma-separated list of genres for each movie.
 - rating: The movie rating (e.g., G, PG, PG-13, R, etc.).
 - movie_producer: The producer of the movie.
 - movie_director: The director(s) of the movie.
 - movie_actor: The actor(s) of the movie.
 - imdb_rating: The rating of the movie on IMDB.
 - imdb_votes: The number of votes on IMDB.
 - tomatometer_rating: The rating of the movie on Rotten Tomatoes.
 - tomatometer_count: The number of ratings on Rotten Tomatoes.
 - audience_rating: The audience rating of the movie on Rotten Tomatoes.
 - audience_count: The number of audience ratings on Rotten Tomatoes.
 - oscar_year: The year of the Oscar ceremony.
 - award: Whether the movie was nominated or won an Oscar.
 - us_gross_income: The total gross revenue earned by the movie in the United States. 
 - worldwide_gross_income: The total gross revenue earned by the movie worldwide. 
 - production_budget: The total cost of producing the movie.

## List of Questions to be Analyzed 

- What features have more significant impact on predicting Oscar winners?
- Can we predict which movie will an Oscar award based on its genre, rating, director, and budget and how accurately can we make those predictions?
- Can we improve the prediction accuracy by considering the average ratings or box office returns of the movie?
- How much of an impact does a movie's length have on its chances of winning an Oscar award?
- How do the features of Oscar winning film differ from those of other highly rated films that did not win the Oscar?
- How do the features of Oscar winning film change over time? For example, do films that win Best Picture today have different features than films that won Best Picture in the 1980's?
- Are movies with higher production budgets more likely to win oscars?




## Machine Learning Model 
The machine learning model will be created using the SciKit-Learn to run a Logistic Regression and will address class imbalance using random over/under sampling, SMOTEEN, or Clustered Random Undersampling modules. 



## Technology Overview
### Data Cleaning and Analysis
The input files were merged together, null data handled and eventually split into four dataframes to be loaded in PostgreSQL tables. The analysis and data cleaning were done using Python and sqlalchemy.

### Database Storage
PostgreSQL tables were used to store the data for the project. ([ERD](https://github.com/shef1109/Oscar-Winning-Predictions/blob/main/ERD/Oscar-Winning-Production_ERD.png))

### Exploratory Analysis and Design :
The puprose of exploratory analysis is to investigate the relationship between various movie attributes and their chances of winning an oscar award. By analysis the dataset containing information of movies derived from the dataset including their genres, ratings, budgets and box office returns , we aim to identify the patterns and insights that can help us make predictions  much better.

### Data Quality Check
 Before proceeding with EDA, we need to perform a data quality check to ensure the integrity of the data. The following steps taken:
  - Check for missing data : we found that there there is plenty of missing data in the ratings , directors, actors, revenue information
  - Check for duplicate records : No duplicate records found, since it has already been taken care of in Database handling
  - Check of outliers

### EDA Questions and Results
 After the data quality check , we need to start with exploring the data by asking several questions and use plots or graphs to answer questions related to the dataset before actually training through Machine Learning

 Some Questions for EDA part of the analysis and their visualizations:
 - What is the most popular movie 'Genre' ? Are certain genres more likely to receive Oscar nominations or wins than others?<br>
 
  We created bar plot to represent this
 - Are there any notable directors who have a higher likelihood of winning an Oscar? <br>
    Created a dataframe to get the top 10 directors and represented the plot with a hist plot to
    show the distribution of Oscar wins by director. 
 - 	Are there any noticeable trends in the relationship between a movie's length and its ratings or box office revenue? <br>
 
    Multiple scatter plots were created to examine this.
    
    a. Scatterplot for runtime and averagerating <br>
    b. Scatterplot for runtime and number of votes <br>
    c. Scatterplot for runtime and us_gross_income <br>
    d. Scatterplot for runtime and worldwide_gross_income <br>
    e. Scatterplot for runtime and production_budget <br>

- Is there a correlation between the movie's budget and its ratings on IMDB, Rotten Tomatoes, and box office revenue? <br>
    Created a heatmap to represent this.

- Are movies with higher production budget more likely to win Oscars ? <br>
   Created a scatter plot of production budget vs. number of Oscars won.

- Are movies with good average ratings more likely to win oscars <br>
  10.33% of movies with good average ratings have won an Oscar.

- Percentage of Movies with good average ratings that won the oscars Vs that did not win <br>
  Created a bar plot to represent this.
 
### Machine Learning
- Sci-Kit Learn
- Logistic Regression
- Random Over/Under Sampling
- SMOTEEN
- Clustered Random Undersampling
- Easy Ensemble AdaBoost Classifer

### Dashboard
- Tableau
- Working on Visualization with Tableau.

## Communication Protocols
- Group will communicate through a group Slack channel and WhatsApp to ask questions and share project updates on a regular basis.
- Group will utilize class time to meet, discuss project goals, and plan meetings outside of class.
- Outside of class hours, we will plan to meet via Zoom and in-person (either on a Friday evening or Sunday afternoon) based on group availability on a week-by-week basis. We will use this time to discuss project updates, ask questions, present strategies, and assist each member so we are able to complete each segment of the project in an appropriate time.


## Open Questions and Comments
