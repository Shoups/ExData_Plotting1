#2

dataset<-read.table("household_power_consumption.txt", header=T, stringsAsFactors=F, sep=";", dec=".")
names(dataset)
dataset<-data.frame(dataset)
str(dataset)
WorkingData<-dataset[dataset$Date %in% c("1/2/2007","2/2/2007"),] 
datetime <- strptime(paste(WorkingData$Date, WorkingData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png('Plot 2.png', width= 480, height = 480)
plot(datetime, Global_active_power1, type= "s", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
