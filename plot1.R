## Pull in the loadData function
source("load_data.R")

## Load the data
data <- loadData()

## Plot a histagram of the Global Active Power
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")

## Copy the plot to a PNG file
dev.copy(png, file = "plot1.png")

## Close the PNG device
dev.off()
