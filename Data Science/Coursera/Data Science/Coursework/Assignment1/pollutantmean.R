pollutantmean <- function(directory,pollutant,id = 1:332){
  pols <- data.frame()
  for(i in id){
    wkfile <- paste("./",directory,"/",sprintf("%03i",i),".csv",sep = "")
    pols<- rbind(pols,read.csv(wkfile))
  }
  mean(pols[[pollutant]],na.rm = TRUE)
}