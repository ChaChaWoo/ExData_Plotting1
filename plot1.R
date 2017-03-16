#Load libraries
library(dplyr)
library(data.table)

#Reads in data and selects needed dates
data <- read.table("H:/Desktop/R Programming/Exploratory/household_power_consumption.txt", skip=1,sep=";")
names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
power <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

#Convert to numeric
globalactivepower <- as.numeric(as.character(power$Global_active_power))
globalreactivepower <- as.numeric(as.character(power$Global_reactive_power))
submetering1 <- as.numeric(as.character(power$Sub_metering_1))
submetering2 <- as.numeric(as.character(power$Sub_metering_2))
submetering3 <- as.numeric(as.character(power$Sub_metering_3))
voltage <- as.numeric(as.character(power$Voltage))

#New column that combines date and time data 
power$Timestamp <-paste(power$Date, power$Time)

#Histogram for Global Active Power
hist(globalactivepower, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
