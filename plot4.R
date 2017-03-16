#Sets graphing parameters with column 1st
par(mfcol = c(2,2))

# Creates 1st graph in 1st column
plot(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), globalactivepower, type = "l", 
     xlab = "", ylab = "Global Active Power(kilowatts)")

#Creates 2nd graph in 1st column
plot(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), submetering1, type = "l", xlab = "", ylab = "Energy sub metering")

#Adds red line graph for datetime v Sub metering 2 data
lines(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), submetering2, type = "l", col = "red" )

#Adds blue line graph for datetime v Sub metering 3 data 
lines(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), submetering3, type = "l", col = "blue" )

#Adds legend 
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Creates 1st graph in 2nd column
plot(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), voltage, type = "l", xlab = "datetime", ylab = "Voltage")

#Creates 2nd graph in 2nd column
plot(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), globalreactivepower, type = "l", xlab = "datetime", ylab = "Global_reactive_power")


dev.copy(png,file = "plot4.png")
dev.off()
