## Pull in the loadData function
source("load_data.R")

## Load the data using the default settings
data <- loadData()

## Plot a histagram of the Global Active Power
hist(data$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

## Copy the plot to a PNG file
dev.copy(png, file = "plot1.png")

## Close the PNG device
dev.off()
