best <- function(state, outcome) {
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
    outcome_data_final <- outcome_data_split[[state]]
    min_ = min(outcome_data_final, na.rm = TRUE)
    min_ind <- which(outcome_data_final %in% min_)
    min_ind
    possible_hospitals <- hospital_names_final[min_ind]
    sort(possible_hospitals)
    possible_hospitals[1]
}