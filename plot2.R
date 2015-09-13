hhd <- read.table("./household_power_consumption.txt",sep=";", header=TRUE,na.strings="?")
tmp<- hhd[hhd$Date=="1/2/2007" | hhd$Date == "2/2/2007",]
tmp1 <- transform(tmp, Dt=as.POSIXct(paste(tmp$Date,tmp$Time,sep=":"),format='%d/%m/%Y:%H:%M:%S'))
png("./plot2.png")
par(mfrow=c(1,1))
plot(tmp1$Global_active_power~tmp1$Dt,ylab="Global Active Power (kilowatts)",type="l",xlab="")
dev.off()