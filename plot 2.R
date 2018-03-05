data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(data_1$Date, data_1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(data_1$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
