hhd <- read.table("./household_power_consumption.txt",sep=";", header=TRUE,na.strings="?")
tmp<- hhd[hhd$Date=="1/2/2007" | hhd$Date == "2/2/2007",]
png("./plot1.png")

par(mfrow=c(1,1))
hist(tmp$Global_active_power,main="Global Active Power",col="red",axes=FALSE,xlab="Global Active Power(kilowatts)")

axis(2,c(0,200,400,600,800,1000,1200))

axis(1,c(0,2,4,6))
dev.off()