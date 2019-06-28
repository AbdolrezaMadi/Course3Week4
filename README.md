# Course3Week4
Getting and Cleaning Data

This project is the last excersice of the . The purpose of this project is to demonstrate the skills we have learned in Getting and Cleaning data course in R for collecting, working with, and cleaning a data set. The provided dataset represents data collected from the accelerometers from the Samsung Galaxy S smartphone. Below the steps of the R script run_analysis is explained.

# 1. reading data
At the begining by using read.csv the training and test datasets, together with additional files for labeling are loaded to R environment.

# 2.  merging data
In this step, the training and test datasets are merged together, in order to have only one data frame.

# 3. adding column names
In order to make the columns more transparent, the column names are added, using the features.txt file.

# 4. select columns containing means and standard deviations
In order to prepare the data for more analysis, only the columns containing mean and standard deviations are extracted in this step.

# 5. descriptive activity
In order to associate measurements with the type of activitites in a meaningful way, the assigned numbers to each activity is replaced by the activity name.

# 6. descriptive variable names
In this step, a few cleaning is applied to the feature's name, i.e. the paranthesis are removed, "-" is replaced with "_" and t and f at the begining are replaced by time_ and frequency_, respetively, showing the features are in time or frequency domain.

# 7. add subject and activity and create a new data frame with mean for each activity and subject
In this step, the additional information about subjects, whose measurements are taken, are added to the data frame. Then by grouping the dataframe by both activity and subject, average value is calculated. The result could be used to compare features of different activities for multiple subjects.  
