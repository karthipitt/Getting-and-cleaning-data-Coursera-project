# Set this working directory to the one with Samsung data

setwd("/Users/karthi/DS_Coursera/Getting_data/project_data/") 
library(plyr)

# Step 1
# Preparing test data
fea <- read.csv("features.txt",sep="",header=FALSE)
x_test_data <- read.csv("test/X_test.txt",sep="",header=FALSE,col.names=fea$V2)
y_test_data <- read.csv("test/y_test.txt",sep="",header=FALSE,col.names="activity")
sub_test_data <- read.csv("test/subject_test.txt",sep="",header=FALSE,col.names="subject_id")

# Preparing train data
x_train_data <- read.csv("train/X_train.txt",sep="",header=FALSE,col.names=fea$V2)
y_train_data <- read.csv("train/y_train.txt",sep="",header=FALSE,col.names="activity")
sub_train_data <- read.csv("train/subject_train.txt",sep="",header=FALSE,col.names="subject_id")

# Row binding the training and test data sets
x_full_data <- rbind(x_train_data,x_test_data)
y_full_data <- rbind(y_train_data,y_test_data)
sub_full_data <- rbind(sub_train_data,sub_test_data)

# Step 2
sel_cols <- grepl("(mean|std)",names(x_full_data))
x_data_ms <- x_full_data[,sel_cols]
final_data <- cbind(sub_full_data,y_full_data,x_data_ms)

# Step 3 - Adding descriptive activity names

final_data$activity <- factor(final_data$activity,labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

# Step 4 - Already performed in line 3 while reading variable names from features.txt
# Step 5 - Tidy data set
final_summary_data <- ddply(final_data,.(subject_id,activity),numcolwise(mean))

write.table(final_summary_data, file = "final_summary.txt", row.name=FALSE)
