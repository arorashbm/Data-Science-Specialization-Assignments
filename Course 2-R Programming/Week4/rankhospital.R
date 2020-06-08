rankhospital <- function(state, outcome, num = "best") {
    data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    states <- data[,7]
    if(!(state %in% states)) {
        stop("invalid state")
    }
    outcomes <- c("heart attack", "heart failure", "pneumonia")
    if(!(outcome %in% outcomes)) {
        stop("invalid outcome")
    }
    hospital_names <- data[,2]
    hospital_names_split_by_state <- split(hospital_names, data$State)
    hospital_names_final <- hospital_names_split_by_state[[state]]
    outcome_data <- NULL
    if(outcome == "heart attack") {
        outcome_data <- data[,11]
        outcome_data <- as.numeric(outcome_data)
    }
    else if(outcome == "heart failure") {
        outcome_data <- data[,17]
        outcome_data <- as.numeric(outcome_data)
    }
    else if(outcome == "pneumonia") {
        outcome_data <- data[,23]
        outcome_data <- as.numeric(outcome_data)
    }
    outcome_data_split <- split(outcome_data, data$State)
    outcome_data_with_NA <- outcome_data_split[[state]]
    NAs <- is.na(outcome_data_with_NA)
    outcome_data_final <- outcome_data_with_NA[!NAs]
    hospital_names_final_noNAs_data <- hospital_names_final[!NAs]
    temp_hospital_names <- hospital_names_final_noNAs_data
    if(num == "best")
        num <- 1
    else if(num == "worst")
        num = length(hospital_names_final_noNAs_data)
    if(num != "best" && num != "worst") {
        num <- as.numeric(num)
        if(num > length(hospital_names_final_noNAs_data))
            return(NA)
    }
    final_ <- order(outcome_data_final, hospital_names_final_noNAs_data)
    temp_hospital_names[final_[num]]
}