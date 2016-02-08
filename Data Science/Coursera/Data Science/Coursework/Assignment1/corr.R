corr <- function(directory,threshold = 0){
  pols <- data.frame()
  cors <- vector()
  for(i in 1:332){
    wkfile <- paste("./",directory,"/",sprintf("%03i",i),".csv",sep = "")
    x<- read.csv(wkfile)
    y<-x[!is.na(x[,2])&!is.na(x[,3]),]
    if(length(y$sulfate)>threshold){
      retval <- cor(x = y$sulfate, y = y$nitrate)
      cors <- c(cors,retval)
    }
  }
  cors
}