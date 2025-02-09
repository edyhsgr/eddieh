#Census API info https://cran.r-project.org/web/packages/censusapi/vignettes/getting-started.html
#Below following https://rpubs.com/DanielSLee/censusMap (great guidance!)

library(tidycensus)
library(tidyverse)
library(sf)

# Get dataset with geometry set to TRUE
MedianHomeValue <- get_acs(geography = "tract", state = c("AK"), 
                    county = c("Anchorage"), 
                    variable = "B25077_001", 
                    geometry = TRUE)

# Plot the estimate to view a map of the data
plot(MedianHomeValue["estimate"])

library(mapview)

# Map the orange_value dataset interactively
mapview(MedianHomeValue)

# Map your data by the estimate column
mapView(MedianHomeValue,
        zcol = "estimate")
           
