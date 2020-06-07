corr <- function(directory, threshold = 0) {
  i <- 1
  df <- complete(directory)
  total_len <- 0
  res <- numeric(0)
  curr_dir <- getwd()
  setwd(directory)
  df_threshold <- df[["id"]][ df[["nobs"]][ df[["id"]] ] > threshold ]
  for(file in df_threshold) {
    if(file < 10)
      file_name = paste("00", file, ".csv", sep = '')
    else if(file < 100)
      file_name = paste("0", file, ".csv", sep = '')
    else
      file_name = paste(file, ".csv", sep = '')
    data <- read.csv(file_name)
    sulfate_data <- data[["sulfate"]]
    nitrate_data <- data[["nitrate"]]
    res <- c(res, cor(sulfate_data, nitrate_data, use = "complete.obs"))
  }
  setwd(curr_dir)
  res
}