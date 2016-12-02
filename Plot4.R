## Graph Plot4.R

par(mfrow = c(2, 2))
## plot #1
plot(hhpc$DateTime, hhpc$Global_active_power, type = "l",
     xlab = "",
     ylab = "Global Active Power")
## plot #2
plot(hhpc$DateTime, hhpc$Voltage, type = "l",
     xlab = "datetime",
     ylab = "Voltage")
## plot #3
plot(hhpc$DateTime, hhpc$Sub_metering_1, type = "l", col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(hhpc$DateTime, hhpc$Sub_metering_2, type = "l", col = "red")
lines(hhpc$DateTime, hhpc$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       cex = .35, bty = "n")
## plot #4
plot(hhpc$DateTime, hhpc$Global_reactive_power, type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")