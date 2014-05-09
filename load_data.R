# Load the Household Power Consumption data and return the subset 
# matching the requested dates (defaulting to Feb 1-2, 2007)

loadData <- function(dates = c("1/2/2007", "2/2/2007")) {
    df <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", 
               colClasses = c(rep("character", 2), rep("numeric", 7)))
    df[df$Date %in% dates,]
}
