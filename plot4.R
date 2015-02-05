plot4<-function(){
  
  ##reading required information
  ##the function below requires lubridate package.
  ##the assumption is that both: the function and the data set are in your working directory
  
  source("downloadData.R")
  data<-downloadData()
  
  ##opening graphics device  
  png(filename="plot4.png",width = 480,height=480)
  
  
  par(mfcol=c(2,2))
  
  
  ##plotting the top left graph
  plot(data$DateTime,data$Global_active_power, type ="l", main=NULL, ylab="Global Active Power (kilowatts)",
       xlab = "")
  
  ##plotting the bottom left graph
  plot(data$DateTime,data$Sub_metering_1,type="n", main=NULL, ylab="Energy sub Metering",
       xlab = "")
  lines(data$DateTime,data$Sub_metering_1)
  lines(data$DateTime,data$Sub_metering_2,col="red")  
  lines(data$DateTime,data$Sub_metering_3,col="blue")
  
  ##adding legend to the bottom left graph
  legend("topright", col=c("black","red","blue"), 
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         lty=c(1,1) # gives the legend appropriate symbols (lines)
  )
  
  ##plotting the top right graph
  plot(data$DateTime,data$Voltage, type ="l", main=NULL, ylab="Voltage",
       xlab = "datetime")
  
  
  ##plotting the bottom right graph
  plot(data$DateTime,data$Global_reactive_power, type ="l", main=NULL, ylab="Global_reactive_power",
       xlab = "datetime")
  
  
  dev.off()
  
}