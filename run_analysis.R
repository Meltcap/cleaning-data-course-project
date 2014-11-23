## This script creates a tidy dataset from data collected from the accelerometer
## from the Samsung Galaxy S smartphone.

## The following steps are applied to get from raw data to tidy:
## 1: Merges the training and the test sets to create one data set.
## 2: Extracts only the measurements on the mean and standard deviation for each measurement.
## 3: Uses descriptive activity names to name the activities in the data set
## 4: Appropriately labels the data set with descriptive variable names.
## 5: From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.

## Load required libraries
library(reshape2)

#### STEP 1: the two sets which need to be combined and tidied ####
# training
trainBase <- "./UCI HAR Dataset/train/"
trainVal <- read.table(paste(trainBase, "X_train.txt", sep=""), header=F, sep="")
trainSubject <- read.table(paste(trainBase, "subject_train.txt", sep=""), header=F, sep="")
trainLabels <- read.table(paste(trainBase, "y_train.txt", sep=""), header=F, sep="")
# test
testBase <- "./UCI HAR Dataset/test/"
testVal <- read.table(paste(testBase, "X_test.txt", sep=""))
testSubject <- read.table(paste(testBase, "subject_test.txt", sep=""))
testLabels <- read.table(paste(testBase, "y_test.txt", sep=""))

## Combine the sets (subjectID, labelID, values(561))
trainset <- cbind(trainSubject, trainLabels, trainVal)
testset <- cbind(testSubject, testLabels, testVal)
set <- rbind(trainset, testset)

# STEP 1 COMPLETE: datasets merged #

#### STEP2: find relevant feature columns with mean and std ####
feat <- read.table("./UCI HAR Dataset/features.txt")
featRelevantNum <- grep("mean\\(\\)|std\\(\\)", feat[,2])
featRelevantName <- feat[featRelevantNum, 2]

## Label the variables
names(set) <- c("Subject", "Activity", as.character(feat[,2]))

## extract only the relevant feature columns from the set and subjectID & labelID
setClean <- set[,c(1, 2, featRelevantNum + 2)]

# STEP 2 COMPLETE: only measures of mean & std #

#### STEP 3 & 4: Give descriptive labels to Activity ####
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)
setClean$Activity <- activity[setClean$Activity,2]

# STEP 3 & 4 COMPLETE: descriptive variable names (columns) and activity labels #

#### STEP 5: Reshape the data with the factors Subject & Activity to get the mean for each ####
setMelt <- melt(setClean, id=c("Subject", "Activity"))
setReshaped <- dcast(setMelt, Subject + Activity ~ variable, mean)

newFile <- "./dataset_subject_activity_means.txt"
write.table(setReshaped, "./dataset_subject_activity_means.txt", row.names=F)

# STEP 5 COMPLETE: created file with new dataset with average for subject + activity #


#### DONE ####

## test if write.table created the correct file
checkFile <- read.table(newFile, header=T)
head(checkFile)
