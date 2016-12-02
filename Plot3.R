## Plot 3.R

plot(hhpc$DateTime, hhpc$Sub_metering_1, type = "l", col = "black",
                xlab = "", ylab = "Energy sub metering")
lines(hhpc$DateTime, hhpc$Sub_metering_2, type = "l", col = "red")
lines(hhpc$DateTime, hhpc$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       cex = .50)