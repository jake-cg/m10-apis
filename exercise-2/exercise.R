### Exercise 2 ###

# As you noticed, it often takes multiple queries to retrieve the desired information.
# This is a perfect situation in which writing a function will allow you to better structure your
# code, and give a name to a repeated task.
library(jsonlite)



# Write a function that allows you to specify an artist, and returns the top 10 tracks of that artist
Top10Tracks <- function(artist){
  artist <- gsub(" ", "+", artist)
  artist.url <- paste0('https://api.spotify.com/v1/search?q=', artist, '&type=artist')
  artist.json <- fromJSON(artist.url)
  id <- artist.json$artists$items$id[1]
  top.tracks.url <- paste0("https://api.spotify.com/v1/artists/", id, "/top-tracks?country=US")
  top.tracks.json <- fromJSON(top.tracks.url)
  return(top.tracks.json$tracks)
}

# What are the top 10 tracks by Nelly?
Nelly.10 <- Top10Tracks("Nelly")



### Bonus ### 
# Write a function that allows you to specify a search type (artist, album, etc.), and a string, 
# that returns the album/artist/etc. page of interest


# Search albums with the word "Sermon"

