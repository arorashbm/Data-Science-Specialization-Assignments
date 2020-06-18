# Load library
library(dplyr)

# Load datasets
data_X_train <- read.table("train/X_train.txt", header = FALSE, sep = "")
data_X_test <- read.table("test/X_test.txt", header = FALSE, sep = "")
data_Y_train <- read.table("train/y_train.txt", header = FALSE, sep = "")
data_Y_test <- read.table("test/y_test.txt", header = FALSE, sep = "")
data_subject_train <- read.table("train/subject_train.txt", header = FALSE, sep = "")
data_subject_test <- read.table("test/subject_test.txt", header = FALSE, sep = "")


## STEP 1
# Merges datasets
data_X = rbind(data_X_train, data_X_test)
data_Y = rbind(data_Y_train, data_Y_test)
data_subject = rbind(data_subject_train, data_subject_test)

# Remove extra tables
rm(data_X_train, data_X_test)
rm(data_Y_train, data_Y_test)
rm(data_subject_train, data_subject_test)


## STEP 2
# Mean and Standard Deviation
labels <- read.table("features.txt")
labels[] <- lapply(labels, as.character)
mean_and_std_indices <- grep(".*mean\\(\\).*|.*std\\(\\).*", labels$V2)
mean_and_std_res <- data_X[,mean_and_std_indices]

# Remove extra values
rm(labels, mean_and_std_indices)

## STEP 3
# Activities names to dataset
activities_names <- read.table("activity_labels.txt")
data_Y_col <- activities_names[data_Y[,1],2]
data_Y <- mutate(data_Y, ActivityName = data_Y_col)

# Remove extra values
rm(activities_names, data_Y_col)

## STEP 4
# Labeling dataset
names(data_Y) <- c("activitynumber", "activityname")
names(data_subject) <- c("subject")
features_names <- read.table("features.txt")
features_names <- features_names$V2
features_names <- gsub("()", "", features_names, fixed = TRUE)
features_names <- gsub("-", "", features_names)
features_names <- gsub(",", "", features_names)
features_names <- tolower(features_names)
names(data_X) <- features_names

# Remove extra values
rm(features_names)

# Combine all datasets
data <- cbind(data_X, data_Y[2], data_subject)
names(data) <- c(make.names(names=names(data_X), unique=TRUE, allow_ = TRUE), names(data_Y[2]), names(data_subject))

## STEP 5
# Tidy dataset
data_tbl <- tbl_df(data)
tidy_data <- data_tbl %>% group_by(activityname, subject) %>% summarise_all(list(mean), na.rm = TRUE)
write.table(tidy_data, file="tidy_data.txt", row.name = FALSE)