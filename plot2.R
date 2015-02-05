plot2<-function(){
  ##reading required information
  ##the function below requires lubridate package.
  ##the assumption is that both: the function and the data set are in your working directory
  
  source("downloadData.R")
  data<-downloadData()
  
  ##opening graphics device  
  png(filename="plot2.png",width = 480,height=480)
  
  ##plotting the graph
  plot(data$DateTime,data$Global_active_power, type ="l", main=NULL, ylab="Global Active Power (kilowatts)",
       xlab = "")
  
  
  dev.off()
}