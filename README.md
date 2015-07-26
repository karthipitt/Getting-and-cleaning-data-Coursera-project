# Script to perform analysis on Samsung data

This script was submitted as a solution to a project in Getting and Cleaning data course from Coursera.

Before running the script, make sure that the working directory been set to the directory with Samsung data. Modify path in setwd() in the script. 

The script has been set up close in line with the steps listed in the problem question.

Step 1:  Merging the training and the test sets to create one data set.

In this step, I performed the following:
	(a) Reading the individual train and test files.
	(b) Read the variable names from features.txt and set it as column names of x_train_data and x_test_data
	(c) Reading subject data 
	(d) Merging all data sets using cbind() and rbind() functions to get final_data data frame

Step 2: Extracting only the measurements on the mean and standard deviation for each measurement. 
	(a) used grepl to select mean and std columns from the merged data frame
	(b) extracted just the mean and std columns and store it to final_data

Step 3: Using descriptive activity names to name the activities in the data set
	(a) created factor variable on the activity column and labeled them accordingly
	(b) replaced the activity column from the activity id to the activity according activity_labels.txt

Step 4: Labeling the data set with descriptive variable names. 
	(a) Refer to step 1c 

Step 5: Creating a second, independent tidy data set with the average of each variable for each activity and each subject
	(a) Used ddply to create the tidy data set with required averages of all columns by grouping with respect to subject_id and activity.

Finally, the output table has been written.
