## Pull in the loadData function
source("load_data.R")

## Load the data with a DateTime column
data <- loadData(includeDateTime = TRUE)

## Plot a histagram of the Global Active Power
with(data, plot(DateTime, Global_active_power, type = "l", 
                xlab = "", ylab = "Global Active Power (kilowatts)"))

## Copy the plot to a PNG file
dev.copy(png, file = "plot2.png")

## Close the PNG device
dev.off()
