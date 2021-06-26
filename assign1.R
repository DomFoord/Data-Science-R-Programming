pollutantmean <- function(directory,pollutant, id = 1:332){
  #create an empty dataset to join the data to with the correct colnames
  poldata <- data.frame(Date = as.Date(character()),sulfate=character(), nitrate=character(), ID=character())
  #join the specdata to the empty data 
  for (i in id){
    filename <- sprintf("%03d.csv",i)
    filedirectory <- paste(getwd(), directory, filename, sep="/")
    temp_data <- read.csv(filedirectory)
    poldata <- rbind(poldata, temp_data)
  }
  return(mean(poldata[,pollutant],na.rm = TRUE))
}


