complete <- function(directory, id = 1:332) {
  len <- length(id)
  res <- data.frame(id = numeric(len), nobs = numeric(len))
  i <- 1
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
    complete_cases <- complete.cases(data[["sulfate"]], data[["nitrate"]])
    complete_cases_sum <- sum(complete_cases)
    res$id[i] <- file
    res$nobs[i] <- complete_cases_sum
    i <- i + 1
  }
  setwd(curr_dir)
  res
}