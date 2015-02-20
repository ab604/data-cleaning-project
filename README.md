README
========================================================
This ```README``` is for Getting and Cleaning Data Course project and explains how the R script: [```run_analysis.R```](https://github.com/ab604/data_cleaning_project/blob/master/run_analysis.R) the script works and how it is connected to the [```Codebook.md```](https://github.com/ab604/data_cleaning_project/blob/master/Codebook.md).

The [```run_analysis.R```](https://github.com/ab604/data_cleaning_project/blob/master/run_analysis.R) uses the [UCI Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).

To execute the script, download [```run_analysis.R```](https://github.com/ab604/data_cleaning_project/blob/master/run_analysis.R) to your working directory and run the command:
`source('run_analysis.R')`

This dataset contains data from experiments containing fixed variables of 30 Subjects performing 6 Activities. The dataset is split into a test and training set across multiple text files.

The measured variables in the dataset refer to accelerometer and gyroscope measurements from a smartphone (Samsung Galaxy S II) worn on the waist. The [```Codebook.md```](https://github.com/ab604/data_cleaning_project/blob/master/Codebook.md) contains more details about the measured variables in the tidied data ```tidy_dat.txt``` generated by [```run_analysis.R```](https://github.com/ab604/data_cleaning_project/blob/master/run_analysis.R). The [UCI Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) site contains full details about the original dataset.

The R script: [```run_analysis.R```](https://github.com/ab604/data_cleaning_project/blob/master/run_analysis.R) loads the ```dplyr``` and ```tidyr``` packages and downloads the dataset (if it has not already been downloaded) and then peforms the following steps to tidy the data contained in the dataset:

1. Using ```read.table``` function, read the measured variables names from ```features.txt``` and remove the non-standard characters from the names.
2. Read in the activity names from ```activity_labels.txt```.
3. Read in the training dataset observations ```train/X_train.txt``` and label the columns using the variable names from the features, and then add an index column.
4. Read in the training subject labels from ```train/subject_train.txt```, and then add an index column.
5. Read in the numeric activity labels list for each training observation that match the activity names from ```train/y_train.txt``` and add an index column.
6. Use the index columns to merge the observations, subjects and activity labels and create a training data frame.
7. Repeat steps 3 to 6 to create a test data frame using ```test/X_test.txt```, ```test/subject_test.txt```, ```train/y_test.txt```.
8. Create a merged training and test data frame with ```rbind```.
9. ```select``` only the mean() and std() variable columns i.e.ignore meanFreq() or angle() observations.
10. Replace the activity labels with the activity names by converting the activity labels to factors and re-leveling them with ```levels```. Remove the non-standard characters from the activity names.
11. The group the data frame by Subject and Activity in preparation for taking the average of each observed variable with ```group_by```.
12. Use ```summarise_each``` to take the mean of each variable and output to a tidy data frame.
13. Clean up the column names to indicate whether it is the mean in the time or frequency domain of each variable for easier reading.
14. Write out a text file ```tidy_dat.txt``` using ```write.table``` with the settings ```row.name=FALSE```.

```tidy_dat.txt``` contains the output processed data in the wide tidy data format, where each variable forms a column and each observation forms a row. The fixed variables of Subject and Activity are in columns 1 and 2 and the means of the measured variables follow in columns 3 to 68 as described in the [```Codebook.md```](https://github.com/ab604/data_cleaning_project/blob/master/Codebook.md).

To read the tidy data into R use the following command:
`data <- read.table("tidy_dat.txt",header=TRUE)`
And then view the data using:
`View(data)` (NB. capital V in View). 




