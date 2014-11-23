Create a Tidy Dataset for Accelerometer Data
============================

This is a course project for the Coursera course Getting and Cleaning Data. The goal of this project, is to create a tidy dataset from raw data and add proper documentation.

## The instruction of the course
You should create one R script called run_analysis.R that does the following.

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names. 
5.  From the data set in step 4, creates a second, independent tidy data set with the 
    average of each variable for each activity and each subject.

## The resulting files
The result of the instructions are the files:

*   **run_analysis.R**

    This file contains the R script that coverts the raw datasets into the tidy dataset. 
    The script follows the instructions of the course and you can read what it does in
    the comments within the file.
    
*   **dataset_subject_activity_means.txt**
    
    This is the tidy dataset created by the R script.
    
*   **README.md**

    This file you are reading which explains how the files work together and what this repo is about.
    
*   **CodeBook.md**

    The explanation of the variables in the tidy dataset, the source of the raw data 
    and the study design.
    
## The used files
The data was collected from the link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The content of the zip-file can be found in the 'UCI HAR Dataset' directory in this repo.

The data used for the tidy dataset can be found in the following files:

* ./UCI HAR Dataset/train/X_train.txt (561 features)
* ./UCI HAR Dataset/train/subject_train.txt (subject id)
* ./UCI HAR Dataset/train/y_train.txt (activity)
* ./UCI HAR Dataset/test/X_test.txt (561 features)
* ./UCI HAR Dataset/test/subject_test.txt (subject id)
* ./UCI HAR Dataset/test/y_test.txt (activity)
* ./UCI HAR Dataset/features.txt (labels for 561 features)
* ./UCI HAR Dataset/activity_labels.txt (labels for activity)

More information can be found in the [code book](CodeBook.md).

## How to reproduce the results
To reproduce the tidy dataset with the R-script in this repo, it is required that the files of the raw dataset are in the working directory and with the same folder structure as in this repo (e.g. ./UCI HAR Dataset/train/).

You can then run the R-script 'run_analysis.R' within that environment. 
This will result in a new file in the working directory called 'dataset_subject_activity_means.txt', which is the tidy dataset.
