
# CodeBook of the dataframe

-activity
The following activities performed by each subject are collected in the dataframe.
  1 WALKING
  2 WALKING_UPSTAIRS
  3 WALKING_DOWNSTAIRS
  4 SITTING
  5 STANDING
  6 LAYING
 
- subject: 
An integer ranged from 1 to 30 as identifier of the person who carried out the experiment.

- Other columns
Rest of the columns are features in time [s] and frequency [Hz] domain. The data are sampled at constant rate of 50 values per second, and in three direction of X, Y and Z. 
The data are then filtered and body acceleration (Body) is seperated from gravity acceleration (Grav).
Additional information is needed to understand the meaning of Jerk and Mag acronyms.

Below list of these features are presented. It's noted that the XYZ are combined together in order to shorten the list. 
time_BodyAcc_XYZ
time_GravityAcc_XYZ
time_BodyAccJerk_XYZ
time_BodyGyro_XYZ
time_BodyGyroJerk_XYZ
time_BodyAccMag
time_GravityAccMag
time_BodyAccJerkMag
time_BodyGyroMag
time_BodyGyroJerkMag
frequency_BodyAcc_XYZ
frequency_BodyAccJerk_XYZ
frequency_BodyGyro_XYZ
frequency_BodyAccMag
frequency_BodyAccJerkMag
frequency_BodyGyroMag
frequency_BodyGyroJerkMag
 

