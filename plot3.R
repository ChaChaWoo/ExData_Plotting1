#Plot of date/time v Sub metering 1 data
plot(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), power$submetering1, type = "l", xlab = "", ylab = "Energy sub metering")

#Adds line graph in red
lines(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), power$submetering2, type = "l", col = "red" )

#Adds line graph in blue
lines(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), power$submetering3, type = "l", col = "blue" )

#Adds legend to graph
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png,file = "plot3.png")
dev.off()
