# Getting and Cleaning Data Project John Hopkins Coursera
# Author: Gudi V. Chandra Sekhar

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Load necessary packages
packages <- c("data.table", "reshape2")
sapply(packages, require, character.only=TRUE, quietly=TRUE)

# Define the working directory and the URL to download the dataset
path <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download and unzip the dataset
download.file(url, file.path(path, "dataFiles.zip"))
unzip(zipfile = "dataFiles.zip")

# Load activity labels and features
activityLabels <- fread(file.path(path, "UCI HAR Dataset/activity_labels.txt"), col.names = c("classLabels", "activityName"))
features <- fread(file.path(path, "UCI HAR Dataset/features.txt"), col.names = c("index", "featureNames"))

# Extract only the measurements on the mean and standard deviation for each measurement
featuresWanted <- grep("(mean|std)\\(\\)", features[, featureNames])
measurements <- features[featuresWanted, featureNames]
measurements <- gsub('[()]', '', measurements)  # Remove parentheses from the feature names

# Load train datasets
train <- fread(file.path(path, "UCI HAR Dataset/train/X_train.txt"))[, featuresWanted, with = FALSE]
data.table::setnames(train, colnames(train), measurements)
trainActivities <- fread(file.path(path, "UCI HAR Dataset/train/Y_train.txt"), col.names = c("Activity"))
trainSubjects <- fread(file.path(path, "UCI HAR Dataset/train/subject_train.txt"), col.names = c("SubjectNum"))
train <- cbind(trainSubjects, trainActivities, train)  # Combine subject, activity, and measurements data

# Load test datasets
test <- fread(file.path(path, "UCI HAR Dataset/test/X_test.txt"))[, featuresWanted, with = FALSE]
data.table::setnames(test, colnames(test), measurements)
testActivities <- fread(file.path(path, "UCI HAR Dataset/test/Y_test.txt"), col.names = c("Activity"))
testSubjects <- fread(file.path(path, "UCI HAR Dataset/test/subject_test.txt"), col.names = c("SubjectNum"))
test <- cbind(testSubjects, testActivities, test)  # Combine subject, activity, and measurements data

# Verify dimensions of train and test datasets to ensure consistency
cat("Train dimensions: ", dim(train), "\n")
cat("Test dimensions: ", dim(test), "\n")

# Merge the train and test datasets, using fill=TRUE to handle any missing columns
combined <- rbind(train, test, fill = TRUE)

# Use descriptive activity names to name the activities in the data set
combined <- merge(combined, activityLabels, by.x = "Activity", by.y = "classLabels", all.x = TRUE)
combined$Activity <- combined$activityName
combined$activityName <- NULL

# Appropriately label the data set with descriptive variable names
names(combined) <- gsub("^t", "Time", names(combined))
names(combined) <- gsub("^f", "Frequency", names(combined))
names(combined) <- gsub("Acc", "Accelerometer", names(combined))
names(combined) <- gsub("Gyro", "Gyroscope", names(combined))
names(combined) <- gsub("Mag", "Magnitude", names(combined))
names(combined) <- gsub("BodyBody", "Body", names(combined))

# Create a second, independent tidy data set with the average of each variable for each activity and each subject
tidyData <- combined[, lapply(.SD, mean), by = .(SubjectNum, Activity)]

# Write the tidy dataset to a file
write.table(tidyData, file = "tidyData.txt", row.names = FALSE, quote = FALSE)

cat("Tidy dataset created and saved as tidyData.txt\n")
