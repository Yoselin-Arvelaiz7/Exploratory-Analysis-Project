#Plot 4

par(mfcol=c(2,2))
par(mar=c(4,5,3,1)+0.1)

#Plot2

plot(Dias[,3],ylab="Global Active Power (kilowatts)",type="l",xaxt="n",xlab="")

axis(1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))

#Plot 3

plot(Dias[,7],ylab="Energy sub metering",type="l",xaxt="n",xlab="")

axis(1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))

lines(Dias[,8],col="red") # sub metering 2
lines(Dias[,9],col="blue") # sub metering 3

#legend
legend("topright",lty=1,lwd=2,col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.3,pt.cex=0.3,y.intersp = 0.15)

#plot 3

plot(Dias[,5],type="l",ylab="Voltage",xaxt="n",xlab="datetime")
axis(1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))

#plot 4

plot(Dias[,4],type="l",ylab="Global_reactive_power",xaxt="n",xlab="datetime")
axis(1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))
