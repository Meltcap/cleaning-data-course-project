Code Book
=========
This code book describes the variables and study design of the accelerometer data from the Samsung Galaxy S.

## Code Book
This code book explaines the variables in the tidy dataset 'dataset_subject_activity_means.txt'

#### Subject
Subject is a factor variable that runs from 1 to 30. Each integer represents one subject.

#### Activity
Activity is a six level factor. The levels are:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

#### Features
The features are the remaining 66 variables. These features are normalized and bounded within [-1,1].

In the original dataset, there were multiple measurements for each feature variable for the same subject + activity combination. In the tidy dataset, an average was calculated from those multiple measurements, resulting in one measurement for each feature variable for each combination of subject + activity.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

## Study Design
The data was collected from the link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The content of the zip-file can be found in the 'UCI HAR Dataset' directory in this repo.

#### Relevant data for the tidy dataset
The tidy dataset is called 'dataset_subject_activity_means.txt' and can be found in the root of the repo.

The data used for the tidy dataset can be found in the following files:

* ./UCI HAR Dataset/train/X_train.txt (561 features)
* ./UCI HAR Dataset/train/subject_train.txt (subject id)
* ./UCI HAR Dataset/train/y_train.txt (activity)
* ./UCI HAR Dataset/test/X_test.txt (561 features)
* ./UCI HAR Dataset/test/subject_test.txt (subject id)
* ./UCI HAR Dataset/test/y_test.txt (activity)
* ./UCI HAR Dataset/features.txt (labels for 561 features)
* ./UCI HAR Dataset/activity_labels.txt (labels for activity)

The train and test sets are basically the same data randomly split on subject id into the two sets. For the tidy dataset, those were combined again to create one dataset.

#### Description of the original dataset provided by the creators
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

More information can be found at the site where the original data set was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones