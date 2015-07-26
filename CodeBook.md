
This code book contains information about the data that was analyzed as part of Getting and Cleaning data project from Coursera

Data downloaded on July 25, 2015

Data Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More information about the Data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The initial data set was organized in these files, subject_train.txt, subject_test.txt, x_train.txt, x_test.txt, y_train.txt, y_test.txt.

All the above data sets were merged to one initial data frame with the following variables.

[1] subject_id : ID of the subject performing an activity
[2] activity: ID corresponding to one of the following activities

1 Walking

2 Walking_Upstairs

3 Walking_Downstairs

4 Sitting 

5 Standing

6 Laying

[3] - [81]: All these variables have been described in features_info.txt 

The initial data set was subjected to following transformations:

1. activity variable was replaced with activity descriptors in place of activity id. 
For ex, a value of 2 in activity column initially will be WALKING UPSTAIRS after transformation
2. Variables [3] - [81] were summarized to show the average of the respective variables for each subject_id and each  activity.

The final data set contains the following variables.
 
[1] subject_id : ID of the subject performing an activity
[2] activity: activity descriptors corresponding to activity ID one of the following activities

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

[3] - [81]: All these variables now show the averages of each variable for each subject_id and each activity.

 
