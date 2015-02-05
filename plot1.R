plot1<-function(){
  
  ##reading required information
  ##the function below requires lubridate package.
  ##the assumption is that both: the function and the data set are in your working directory
  
  source("downloadData.R")
  data<-downloadData()
  
  #opening graphics device  
  png(filename="plot1.png",width = 480,height=480)
  
  #plotting the histogram 
  hist(as.numeric(data$Global_active_power),col="red", main = "Global Active Power",
       xlab="Global Active Power (kilowatts)")
  
  ##closing graphics device
  dev.off()
  
}