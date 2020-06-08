rankall <- function(outcome, num = "best") {
    data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    states_unsorted <- unique(data[,7])
    states <- sort(states_unsorted)
    hospital <- character(0)
    state_code <- character(0)
    for(state in states) {
        state_code <- c(state_code, state)
        hospital <- c(hospital, rankhospital(state, outcome, num))
    }
    res = data.frame(hospital = hospital, state = state_code)
    row.names(res) <- states
    res
}