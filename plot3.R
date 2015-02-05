plot3<-function(){
  
  ##reading required information
  ##the function below requires lubridate package.
  ##the assumption is that both: the function and the data set are in your working directory
  
  source("downloadData.R")
  data<-downloadData()
  
  ##opening graphics device  
  png(filename="plot3.png",width = 480,height=480)
  
  ##plotting the graph
  plot(data$DateTime,data$Sub_metering_1,type="n", main=NULL, ylab="Energy sub Metering",
       xlab = "")
  lines(data$DateTime,data$Sub_metering_1)
  lines(data$DateTime,data$Sub_metering_2,col="red")  
  lines(data$DateTime,data$Sub_metering_3,col="blue")
  
  ##adding legend to a plot
  legend("topright", col=c("black","red","blue"), 
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         lty=c(1,1) # gives the legend appropriate symbols (lines)
         )
  
  dev.off()
  
}