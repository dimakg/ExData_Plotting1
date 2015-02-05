downloadData<-function(){
  
  ##required packages
  require(lubridate)
  
  ##Loading data from the working directory.
  ##Split each row into nine columns
  dataSet<-read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)
  
  ##adding names to the data set
  name<-unlist(read.table("household_power_consumption.txt",sep=";",nrows=1))
  names(dataSet)<-as.vector(name)
  
  
  ##creating a new column containing date and time
  dataSet$DateTime<-paste(dataSet$Date,dataSet$Time)
  
  ##convering the DateTime column into as.POSIXlt
  dataSet$DateTime<-as.POSIXct(strptime(dataSet$DateTime, "%d/%m/%Y %H:%M:%S"))
      
  invisible(dataSet) 
}