complete <- function(directory, id = 1:332){
  pols <- data.frame()
  for(i in id){
    wkfile <- paste("./",directory,"/",sprintf("%03i",i),".csv",sep = "")
    x<- read.csv(wkfile)
    y<-sum(!is.na(x[,2])&!is.na(x[,3]))
    pols<-rbind(pols,(c(i,y)))
  }
  names(pols)<-c("id","nobs")
  pols
}