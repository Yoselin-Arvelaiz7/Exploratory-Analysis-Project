Datos<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")

option(scipen=999)

#Subset 1/2/2007-2/2/2007
datos<-data.frame(Datos[which(Datos$Date=="1/2/2007"),])
datos1<-data.frame(Datos[which(Datos$Date=="2/2/2007"),])

Dias<-rbind(datos,datos1)

#Energy sub metering
#Plot 3

plot(Dias[,7],ylab="Energy sub metering",type="l",xaxt="n",xlab="")

axis(1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))

lines(Dias[,8],col="red") # sub metering 2
lines(Dias[,9],col="blue") # sub metering 3

#legend
legend("topright",lty=1,lwd=2,col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.6,pt.cex=0.6,y.intersp = 0.3)
