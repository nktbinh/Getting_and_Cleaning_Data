# Load Packages and prepare the data

packages <- c("dplyr", "tidyr")
sapply(packages, require, character.only=TRUE, quietly=TRUE)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, file.path(getwd(), "/Desktop/Coursera_Assignments/Getting_and_Cleaning_Data/data.zip"))
setwd(paste0(getwd(), "/Desktop/Coursera_Assignments/Getting_and_Cleaning_Data"))
unzip(zipfile = paste0(getwd(), "data.zip"))

# Load activity labels + features

activityLabels <- data.table::fread(file.path(getwd(), "UCI HAR Dataset/activity_labels.txt")
                        , col.names = c("classLabels", "activityName"))
features <- data.table::fread(file.path(getwd(), "UCI HAR Dataset/features.txt")
                  , col.names = c("index", "featureNames"))
featuresWanted <- grep("(mean|std)\\(\\)", features[, featureNames])
measurements <- features[featuresWanted, featureNames]
measurements <- stringr::str_replace_all(measurements,'[()]', '')

# Load train datasets
train <- data.table::fread(file.path(getwd(), "UCI HAR Dataset/train/X_train.txt"))[, featuresWanted, with = FALSE]
data.table::setnames(train, colnames(train), measurements)
trainActivities <- data.table::fread(file.path(getwd(), "UCI HAR Dataset/train/Y_train.txt")
                         , col.names = c("Activity"))
trainSubjects <- data.table::fread(file.path(getwd(), "UCI HAR Dataset/train/subject_train.txt")
                       , col.names = c("SubjectNum"))
train <- cbind(trainSubjects, trainActivities, train)

# Load test datasets
test <- data.table::fread(file.path(getwd(), "UCI HAR Dataset/test/X_test.txt"))[, featuresWanted, with = FALSE]
data.table::setnames(test, colnames(test), measurements)
testActivities <- data.table::fread(file.path(getwd(), "UCI HAR Dataset/test/Y_test.txt")
                        , col.names = c("Activity"))
testSubjects <- data.table::fread(file.path(getwd(), "UCI HAR Dataset/test/subject_test.txt")
                      , col.names = c("SubjectNum"))
test <- cbind(testSubjects, testActivities, test)

# Merge datasets
data <- rbind(train, test)

# Convert classLabels to activityName
data$Activity <- factor(data[, Activity]
                                 , levels = activityLabels$classLabels
                                 , labels = activityLabels$activityName)

data$SubjectNum <- as.factor(data$SubjectNum)
data1 <- data %>% 
  gather(-SubjectNum,-Activity, key = variable, value = value) %>%
  reshape2::dcast(SubjectNum + Activity ~ variable, fun.aggregate = mean)

write.table(x = data1, file = "final.txt", row.names = FALSE, quote = FALSE)
