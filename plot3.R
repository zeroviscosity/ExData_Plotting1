## Pull in the loadData function
source("load_data.R")

## Load the data with a DateTime column
data <- loadData(includeDateTime = TRUE)

## Plot the Energy sub metering against DateTime
with(data, plot(DateTime, Sub_metering_1, type = "l", xlab = "", 
                ylab = "Energy sub metering"))
with(data, points(DateTime, Sub_metering_2, type = "l", col = "red"))
with(data, points(DateTime, Sub_metering_3, type = "l", col = "blue"))     

## Add the legend
legend("topright", col = c("black", "red", "blue"), lty = c(1, 1),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Copy the plot to a PNG file
dev.copy(png, file = "plot3.png")

## Close the PNG device
dev.off()
