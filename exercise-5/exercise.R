### Exercise 5 ###
library(jsonlite)
library(dplyr)

# Write a function that allows you to specify a movie, then does the following:
  myfunction <- function(movie){
    movie <- gsub(" ", "+", movie)
    base <- "https://api.nytimes.com/svc/movies/v2/reviews/search.json?"
    api.key <- "&api-key=81523542bf1c4ce4a3c6f2348f1b21da"
    request <- paste0(base, "query=", movie, api.key)
    data <- fromJSON(request)
    results <- flatten(data$results)[1,]
    View(results)
  }
  # Replace all of the spaces in your movie title with plus signs (+)
  
  
  # Construct a search query using YOUR api key
  # The base URL is https://api.nytimes.com/svc/movies/v2/reviews/search.json?
  # See the interactive console for more detail:https://developer.nytimes.com/movie_reviews_v2.json#/Console/GET/reviews/search.json
  
  
  # Request data using your search query
  
  
  # What type of variable does this return?
  
  # Flatten the data stored in the `$results` key of the data returned to you
  
  
  # From the most recent review, store the headline, short summary, and link to full article each in their own variables
  
  
  # Return an list of the three pieces of information from above
  

# Test that your function works with a movie of your choice

