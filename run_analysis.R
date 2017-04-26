## You should create one R script called run_analysis.R that does the following.
## 1.Merges the training and the test sets to create one data set.
## 2.Extracts only the measurements on the mean and standard deviation for each measurement.
## 3.Uses descriptive activity names to name the activities in the data set
## 4.Appropriately labels the data set with descriptive variable names.
## 5.From the data set in step 4, creates a second, independent tidy data set with the 
##   average of each variable for each activity and each subject.


library(dplyr)
library(data.table)
##setwd('~/UCI HAR Dataset')

## Load Column Names & Activity Labels Tables
X_NamesFeatures <- read.table("features.txt")[,2]
Y_NamesActivity <- read.table("activity_labels.txt")
names(Y_NamesActivity) <- c("Activity_ID","Activity") 

## Load Test Datasets
X_test_data <- read.table("./test/X_test.txt")
Y_test_data <- read.table("./test/y_test.txt")
subject_test_data <- read.table("./test/subject_test.txt")

## Load Train Datasets
X_train_data <- read.table("./train/X_train.txt")
Y_train_data <- read.table("./train/y_train.txt")
subject_train_data <- read.table("./train/subject_train.txt")


## Step 1: Merge Dataset
X_data <- rbind(X_test_data, X_train_data)
Y_data <- rbind(Y_test_data, Y_train_data)
subject_data <- rbind(subject_test_data, subject_train_data)

## Set Names
names(X_data) = X_NamesFeatures
names(Y_data) = 'Activity_ID'
names(subject_data) = 'Subject'

## Create one Data Set
FullData <- cbind(X_data, Y_data, subject_data)


## Step 2: Extract Measures (and Activity and Subject) Columns

ExtractedMeasures <- grep(".*mean\\(\\)|.*std.*|Activity_ID|Subject", names(FullData), ignore.case = TRUE)
## IF you want all data containing Mean name (e.g. MeanFreq or Angel(...)) then use below
## ExtractedMeasures <- grep(".*mean.*|.*std.*|Activity_ID|Subject", names(FullData), ignore.case = TRUE)

SubData <- FullData[, ExtractedMeasures] 

## Step 3: Merge Activity variable names on IDs, remove ID
SubData <- merge(SubData, Y_NamesActivity, by.x = "Activity_ID", by.y = "Activity_ID")
SubData <- select(SubData, -Activity_ID)
SubData$Activity <- as.character(SubData$Activity)


## Step 4: Change Labels of Columns

names(SubData)<-gsub("Acc", "Accelerometer", names(SubData))
names(SubData)<-gsub("Gyro", "Gyroscope", names(SubData))
names(SubData)<-gsub("BodyBody", "Body", names(SubData))
names(SubData)<-gsub("Mag", "Magnitude", names(SubData))
names(SubData)<-gsub("^t", "Time", names(SubData))
names(SubData)<-gsub("^f", "Frequency", names(SubData))
names(SubData)<-gsub("tBody", "TimeBody", names(SubData))
names(SubData)<-gsub("-mean()", "-Mean", names(SubData), ignore.case = TRUE)
names(SubData)<-gsub("-std()", "-STD", names(SubData), ignore.case = TRUE)
names(SubData)<-gsub("\\()", "", names(SubData))

## Step 5: Create aggregated dataset of subdata on subject and activity that shows mean (average value)
SubData$Subject <- as.factor(SubData$Subject)
SubData$Activity <- as.factor(SubData$Activity)
SubData <- data.table(SubData)

tidyData <- SubData %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
tidyData$Activity <- as.character(tidyData$Activity)

write.table(tidyData, file = "Tidy.txt", row.names = FALSE)

## Read Data
## read.table("Tidy.txt", header = TRUE)

## For check in Excel
## write.csv(tidyData, file = "Tidy2.csv", row.names = FALSE)
## write.csv(SubData, file = "DetailedTidy.csv", row.names = FALSE)

