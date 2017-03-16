# Creates graph of date/time vs global active power data
plot(strptime(power$Timestamp, "%d/%m/%Y %H:%M:%S"), globalactivepower, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
