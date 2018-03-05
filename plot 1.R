setwd("F:/DATA SCIENCE ONLINE COURSE/Module 4")

data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data_1$Date <- as.Date(data_1$Date, format="%d/%m/%Y")
GAP <- as.numeric(data_1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

