## Plot 1  Global Active Power histogram
Url<- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!file.exists("./data")){dir.create("./data")}
download.file(Url,destfile="./data/Dataset.zip",method='curl')
unzip(zipfile="./data/Dataset.zip",exdir="./data")

# read the data

dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

# plot
globalActivePower <-as.numeric(subSetData$Global_active_power)
png("plot1.png",width=480,height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
















