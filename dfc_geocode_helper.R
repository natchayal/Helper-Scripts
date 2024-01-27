## Data Visualization ICPSR 2023
## Geocode Helper Script
## Name: Natchaya Luangphairin
## Date: June 24, 2023

# install the necessary libraries
library(dplyr, warn.conflicts = FALSE)
library(tidygeocoder)

# create a dataframe with addresses
some_addresses <- tibble::tribble(
  ~name,                  ~addr,
  "White House",          "1600 Pennsylvania Ave NW, Washington, DC",
  "Transamerica Pyramid", "600 Montgomery St, San Francisco, CA 94111",     
  "Willis Tower",         "233 S Wacker Dr, Chicago, IL 60606"                                  
)

# geocode the addresses
lat_longs <- some_addresses %>% 
  geocode(addr, method = 'osm', lat = latitude, long = longitude)
#> Passing 3 addresses to the Nominatim single address geocoder
#> Query completed in: 3 seconds
#> 
#> 
#> 

lat_longs

# Example code above. YOUR code below. 


dfc <- read_csv(file.choose())
glimpse(dfc)

dfc_sub <- dfc %>%
  select(`Facility Name`, `Address Line 1`)

lat_longs <- dfc_sub %>%
  geocode(`Address Line 1`, method = "osm", lat = latitude, long = longitude)