Datos<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")

#Plot 1
#Histogram with Global active power variable
option(scipen=999)

#Subset 1/2/2007-2/2/2007
datos<-data.frame(Datos[which(Datos$Date=="1/2/2007"),])
datos1<-data.frame(Datos[which(Datos$Date=="2/2/2007"),])

Dias<-rbind(datos,datos1)

hist(Dias[,3],main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
