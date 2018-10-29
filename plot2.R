Datos<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")

option(scipen=999)

#Subset 1/2/2007-2/2/2007
datos<-data.frame(Datos[which(Datos$Date=="1/2/2007"),])
datos1<-data.frame(Datos[which(Datos$Date=="2/2/2007"),])

Dias<-rbind(datos,datos1)

#Plot2

plot(Dias[,3],ylab="Global Active Power (kilowatts)",type="l",xaxt="n",xlab="")

axis(1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))
