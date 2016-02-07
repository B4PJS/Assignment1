pollutantmean <- function(directory,pollutant,id = 1:332){
  pols <- NULL
  pols<- pols + for(i in id){
    wkfile <- paste(getwd(),"/",directory,"/",sprintf("%03i",i),".csv",sep = "")
     read.csv(wkfile)
  }
  pols
}