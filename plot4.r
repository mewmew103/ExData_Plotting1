## Plotting 4 graphs in one screen

par(mfrow=c(2,2), mar=c(5,5,2,2))
with(data,{
  plot(data_dates, Global_active_power, type="l", ylab="Global Active Power", xlab = "")
  plot(data_dates, Voltage, type="l", ylab="Voltage", xlab = "datetime")
  plot(data_dates, Sub_metering_1, type="l", ylab="Energy Sub-Metering", xlab = "")
  lines.default(data_dates, Sub_metering_2, col="blue")
  lines.default(data_dates, Sub_metering_3, col="red")
  legend("topright", lwd = 2, col = c("black", "blue", "red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(data_dates, Global_reactive_power, type="l",xlab ="datetime" )
})
