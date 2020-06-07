pollutantmean <- function(directory, pollutant, id = 1:332) {
  total_pol <- 0
  sum_pol <- 0
  mean_pol <- 0
  curr_dir <- getwd()
  setwd(directory)
  for(file in id) {
    if(file < 10)
      file_name = paste("00", file, ".csv", sep = '')
    else if(file < 100)
      file_name = paste("0", file, ".csv", sep = '')
    else
      file_name = paste(file, ".csv", sep = '')
    data <- read.csv(file_name)
    data_pol <- data[[pollutant]]
    NAs <- is.na(data_pol)
    final_data <- data_pol[!NAs]
    sum_pol <- sum_pol + sum(final_data)
    total_pol <- total_pol + sum(!NAs)
  }
  setwd(curr_dir)
  mean_pol <- sum_pol/total_pol
  mean_pol
}