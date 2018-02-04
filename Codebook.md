# Getting and Cleaning Data Project
Author: Binh Nguyen

## Data Source
[UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Information about the data set
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed 
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity 
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been 
randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test 
data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width 
sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and 
body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational 
force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each 
window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

## Data Dictionary

### SubjectNum: Numbers identifying subjects from trials. There are 30 unique subjects in total

### Activity: Labels indicating what activity the subject was performing when the measurements were taken

### The remaining variables are the mean and standard deviation measures collected from the accelerometer and gyroscope 3-axial raw signals. All mean measures are denoted with 'mean()'. All standard deviation measures are denoted with 'std()'.

"fBodyAcc-mean-X"          
"fBodyAcc-mean-Y"           "fBodyAcc-mean-Z"           "fBodyAcc-std-X"           
"fBodyAcc-std-Y"            "fBodyAcc-std-Z"            "fBodyAccJerk-mean-X"      
"fBodyAccJerk-mean-Y"       "fBodyAccJerk-mean-Z"       "fBodyAccJerk-std-X"       
"fBodyAccJerk-std-Y"        "fBodyAccJerk-std-Z"        "fBodyAccMag-mean"         
"fBodyAccMag-std"           "fBodyBodyAccJerkMag-mean"  "fBodyBodyAccJerkMag-std"  
"fBodyBodyGyroJerkMag-mean" "fBodyBodyGyroJerkMag-std"  "fBodyBodyGyroMag-mean"    
"fBodyBodyGyroMag-std"      "fBodyGyro-mean-X"          "fBodyGyro-mean-Y"         
"fBodyGyro-mean-Z"          "fBodyGyro-std-X"           "fBodyGyro-std-Y"          
"fBodyGyro-std-Z"           "tBodyAcc-mean-X"           "tBodyAcc-mean-Y"          
"tBodyAcc-mean-Z"           "tBodyAcc-std-X"            "tBodyAcc-std-Y"           
"tBodyAcc-std-Z"            "tBodyAccJerk-mean-X"       "tBodyAccJerk-mean-Y"      
"tBodyAccJerk-mean-Z"       "tBodyAccJerk-std-X"        "tBodyAccJerk-std-Y"       
"tBodyAccJerk-std-Z"        "tBodyAccJerkMag-mean"      "tBodyAccJerkMag-std"      
"tBodyAccMag-mean"          "tBodyAccMag-std"           "tBodyGyro-mean-X"         
"tBodyGyro-mean-Y"          "tBodyGyro-mean-Z"          "tBodyGyro-std-X"          
"tBodyGyro-std-Y"           "tBodyGyro-std-Z"           "tBodyGyroJerk-mean-X"     
"tBodyGyroJerk-mean-Y"      "tBodyGyroJerk-mean-Z"      "tBodyGyroJerk-std-X"      
"tBodyGyroJerk-std-Y"       "tBodyGyroJerk-std-Z"       "tBodyGyroJerkMag-mean"    
"tBodyGyroJerkMag-std"      "tBodyGyroMag-mean"         "tBodyGyroMag-std"         
"tGravityAcc-mean-X"        "tGravityAcc-mean-Y"        "tGravityAcc-mean-Z"       
"tGravityAcc-std-X"         "tGravityAcc-std-Y"         "tGravityAcc-std-Z"        
"tGravityAccMag-mean"       "tGravityAccMag-std"  
