# Load dplyr package
library(dplyr)
# Read in Cleaned CSV File
MachineLearning <- read.csv(file='Processed_Oscar_movie_Details.csv',check.names=F,stringsAsFactors = F)
# Perform Linear Regression
lm(award_Winner~imdb_rating_scaled+tomatometer_rating_scaled+audience_rating_scaled,data=MachineLearning)
# Determine the p-value and the r-squared value for the linear regression model
summary(lm(award_Winner~imdb_rating_scaled+tomatometer_rating_scaled+audience_rating_scaled,data=MachineLearning))
