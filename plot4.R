## Pull in the loadData function
source("load_data.R")

## Load the data with a DateTime column
data <- loadData(includeDateTime = TRUE)

## Set up the grid
par(mfrow = c(2, 2))

## Reduce the font size
par(cex = 0.65)

## Plot 1: Global Active Power against DateTime
with(data, plot(DateTime, Global_active_power, type = "l", xlab = "", 
                ylab = "Global Active Power"), cex = 0.5)

## Plot 2: Voltage against DateTime
with(data, plot(DateTime, Voltage, type = "l", xlab = "datetime", 
                ylab = "Voltage"))

## Plot 3: Energy sub metering against DateTime
with(data, plot(DateTime, Sub_metering_1, type = "l", xlab = "", 
                ylab = "Energy sub metering"))
with(data, points(DateTime, Sub_metering_2, type = "l", col = "red"))
with(data, points(DateTime, Sub_metering_3, type = "l", col = "blue"))     
legend("topright", col = c("black", "red", "blue"), lty = c(1, 1), bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Plot 4: 
with(data, plot(DateTime, Global_reactive_power, type = "l", 
                xlab = "datetime"))

## Copy the plot to a PNG file
dev.copy(png, file = "plot4.png")

## Close the PNG device
dev.off()
