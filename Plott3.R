## Plotting a Multivariate Scatter Plot
with(data,{
  plot(data_dates,Sub_metering_1,type="l", ylab="Energy sub-metering", xlab = "")
  lines.default(data_dates,Sub_metering_2, col="blue")
  lines.default(data_dates,Sub_metering_3, col="green")
  legend("topright", lwd = 2, col = c("black", "blue", "green"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})


dev.copy(png.file="p1ot3.png", width=480, height=480)
dev.off()
