# run_analysis.R
#
# A. Bailey 19th Feb. 2015
# Script for producing tidy data for data cleaning course project
#
# This script downloads the UCI Human Activity Recognition 
# Using Smartphones Dataset and does the following:
#
# 1 Merges the training and the test sets to create one data set.
# 2 Extracts only the measurements on the mean and standard deviation for 
# each measurement. 
# 3 Uses descriptive activity names to name the activities in the data set
# 4 Appropriately labels the data set with descriptive variable names. 
# 5 From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

# Load required pacakages
library(dplyr)
library(tidyr)

# Download URL for data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download data if not already downloaded
if(!file.exists("UCI_dataset.zip")){
        download.file(fileUrl,destfile="UCI_dataset.zip")
        dateDownloaded <- date()
        # Unzip data
        unzip(zipfile = "UCI_dataset.zip", files = NULL,
               unzip = "internal") 
        # Create logfile
        log_con <- file("UCI_data_download.log")
        cat (fileUrl,"\n","destfile= UCI_dataset.zip",
             "\n","destdir = UCI HAR dataset","\n",dateDownloaded, 
             file = log_con)
        close(log_con)
}

# 1 Merge training and test data to create one set:

# Read in the measured variables names, naming columns as id and vars
features <- read.table("UCI HAR Dataset//features.txt",stringsAsFactors = FALSE
                       ,col.names=c("id","vars"))
# Remove non-standard characters
features$vars <- gsub('[^a-zA-Z0-9.]', '', features$vars)

# Read in  activity names with columns as  id and vars
activity_names <- read.table("UCI HAR Dataset/activity_labels.txt",
                             col.names=c("id","Activity"))

# Read in training observtions file and name columns with features variables
train_obs <- read.table("UCI HAR Dataset//train/X_train.txt",
                        col.names=features$vars)

# Add index, id column for merging
train_obs <- mutate(train_obs, id = 1:nrow(train_obs))

# Read in training subjects and add index, id column for merging
subjects_train <- read.table("UCI HAR Dataset//train/subject_train.txt",
                        col.names="Subject")
subjects_train <- mutate(subjects_train, id = 1:nrow(subjects_train))

# Read in training activity list and add index, id column for merging
activity_train <- read.table("UCI HAR Dataset//train/y_train.txt",
                        col.name="Activity")
activity_train <- mutate(activity_train, id = 1:nrow(activity_train))

# Merge the observations with subjects, and then with activities
# Use the id as the key for the merge to create merged training set
train_obs_subjects <- merge(train_obs, subjects_train, by = "id", sort=FALSE)
train_total <- merge(train_obs_subjects, activity_train, by = "id", sort=FALSE)

# Read in test data using feature variables for column names
test_obs <- read.table("UCI HAR Dataset//test/X_test.txt",
                   col.names=features$vars)
# Add index, id column
test_obs <- mutate(test_obs, id = 1:nrow(test_obs))

# Read in test subjects and add id column
subjects_test <- read.table("UCI HAR Dataset//test/subject_test.txt",
                             col.names="Subject")
subjects_test <- mutate(subjects_test, id = 1:nrow(subjects_test))

# Read in test activity list and add index, id column
activity_test <- read.table("UCI HAR Dataset//test/y_test.txt",
                             col.name="Activity")
activity_test <- mutate(activity_test, id = 1:nrow(activity_test))

# Merge the observations with subjects, and then with activities
# Use the id as the key for the merge to create merged training set
test_obs_subjects <- merge(test_obs, subjects_test, by = "id", sort=FALSE)
test_total <- merge(test_obs_subjects, activity_test, by = "id", sort=FALSE)

# Combine test and training data into one set
dat <- rbind(train_total,test_total)

# 2. Extract only the measurements on the mean and standard deviation
# for each measurement:

# Select only the mean() Time and Freq, and std() variable columns
# i.e. ignore meanFreq or angle observations
dat <- select(dat, Subject, Activity, matches("mean"),
              -matches("meanFreq"), contains("std"),-matches("angle"))

# 3. Use the descriptive activity names to name the activities in the
# data set:

# Coerce the activity column from integer to a factor so that labels 
# can be applied
dat$Activity <- as.factor(dat$Activity)

# Replace activity numbers with activity names and clean them up.
# read.table levels the activities alphabetically
# hence the levels in activity_names are:
# 1 "LAYING" 2 "SITTING" 3 STANDING" 4 "WALKING" 5 "WALKING_DOWNSTAIRS" 
# 6 "WALKING_UPSTAIRS"
# but the activites are numbered:
# 1 "WALKING" 2 "WALKING_UPSTAIRS" 3 "WALKING_DOWNSTAIRS" 4 "SITTING" 
# 5 "STANDING"  6 "LAYING" 
# Hence remapping them so:
levels(dat$Activity)[1] <- levels(activity_names$Activity)[4]
levels(dat$Activity)[2] <- levels(activity_names$Activity)[6]
levels(dat$Activity)[3] <- levels(activity_names$Activity)[5]
levels(dat$Activity)[4] <- levels(activity_names$Activity)[2]
levels(dat$Activity)[5] <- levels(activity_names$Activity)[3]
levels(dat$Activity)[6] <- levels(activity_names$Activity)[1]

# Clean up the labels
dat$Activity <- gsub('[^a-zA-Z0-9.]', ' ', dat$Activity)

# 4. Appropriately label the data set with descriptive variable names:

# Replace colunmn names with slightly more descriptive labels
colnames(dat) <- sub("mean", " Mean ", colnames(dat))
colnames(dat) <- sub("std", " Standard Deviation ", colnames(dat))

# 5.From the data set in step 4, creates a second, independent tidy data set 
# with the  average of each variable for each activity and each subject:

# Group data by Subject and Activity
grp_dat <- group_by(dat,Subject,Activity)

# Take the mean of each column
tidy_dat <- summarise_each(grp_dat, funs(mean))

# Clean up the column names for the tidy dataset in wide tidy form
names(tidy_dat) <- sub("^t", "Mean Time ", names(tidy_dat))
names(tidy_dat) <- sub("^f", "Mean Freq ", names(tidy_dat))

# Write an ouptut text file using row.name=FALSE in wide tidy form
write.table(tidy_dat, file = "tidy_dat.txt", row.name=FALSE)
