## Reading required lines from given dataset and renaming the variables accordingly

con<-file("household_power_consumption.txt", "r")
lines<-c()
data<-read.table(text=grep("^[1,2]/2/2007", readLines(con), value = TRUE),
                   sep=";", 
                   na.strings = "?",
                   stringsAsFactors = FALSE)
unlink(lines)
colnames(data)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
data_dates<-paste(data$Date, data$Time)
data$data_dates<-strptime(data_dates,"%d/%m/%Y %H:%M:%S")
 
## Plotting a Histogram
hist(data$Global_active_power, col="red", xlab = "Global Active Power", main="Global Active Power")

## Copying Plot to PNG file
dev.copy(png.file="plot1.png", width=480, height=480)
dev.off
