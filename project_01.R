library(dplyr)
library(datasets)

# Loading "Airquality" dataset and removing NA values from the table
dt <- airquality[complete.cases(airquality), ]

# Function "groupByMonth": it subsets dataset using "Month"
groupByMonth <- function(data, month) {
    result <- data %>% filter(Month == month)
    return(result)
}

# Function "groupByInput": it subsets dataset using all the value inserted by the user
groupByInput <- function(data, month, ozoneMin, ozoneMax, solarMin, solarMax, windMin, windMax, tempMin, tempMax) {
    result <- data %>% filter(Month == month,
                            Ozone >= ozoneMin, Ozone <= ozoneMax,
                            Solar.R >= solarMin, Solar.R <= solarMax,
                            Wind >= windMin, Wind <= windMax,
                            Temp >= tempMin, Temp <= tempMax)
    return(result)
}