hhd <- read.table("./household_power_consumption.txt",sep=";", header=TRUE,na.strings="?")
tmp<- hhd[hhd$Date=="1/2/2007" | hhd$Date == "2/2/2007",]
tmp1 <- transform(tmp, Dt=as.POSIXct(paste(tmp$Date,tmp$Time,sep=":"),format='%d/%m/%Y:%H:%M:%S'))
png("./plot4.png")

par(mfrow=c(2,2))

plot(tmp1$Global_active_power~tmp1$Dt,ylab="Global Active Power",type="l",xlab="")
plot(tmp1$Voltage~tmp1$Dt,ylab="Voltage",xlab="datetime",type="l")

plot(tmp1$Sub_metering_1~tmp1$Dt,ylab="Energy sub Metering",type="l",xlab="")
lines(tmp1$Sub_metering_2~tmp1$Dt, col="red")
lines(tmp1$Sub_metering_3~tmp1$Dt, col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty="solid",col=c("Black","red","blue"), bty="n")

plot(tmp1$Global_reactive_power~tmp1$Dt,ylab="Global_reactive_power",type="l",xlab="datetime")
dev.off()