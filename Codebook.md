Getting and Cleaning Data Course Project Codebook
========================================================

This is the code book for the Getting and Cleaning Data course project containing the variable names for the file: ```tidy_dat.txt``` created by the R script: [```run_analysis.R```](https://github.com/ab604/data_cleaning_project/blob/master/run_analysis.R)

The original UCI Human Activity Recognition Using Smartphones Dataset contained fixed variables of 30 Subjects performing 6 Activities. These fixed variables are in columns 1 and 2 of ```tidy_dat.txt``` as shown in the list below.

The measured variable codes refer to accelerometer and gyroscope measurements from a smartphone (Samsung Galaxy S II) worn on the waist, denoted ```BodyAcc``` and ```BodyGyro``` respectively. The acceleration signals are also separated into body and gravity acceleration signals, where the gravity acceleration is denoted ```GravityAcc```. 

Body linear acceleration and angular velocity were derived in the time domain to obtain ```Jerk``` signals

The magnitude of these three-dimensional signals were calculated using the Euclidean norm denoted ```Mag``` where ```X``` , ```Y``` and ```Z``` are used to denote 3-axial signals in the X, Y and Z directions.

The tidy processed measured variables are in columns 3 to 68 of ```tidy_dat.txt```  as shown in the list below. These variables are prefixed with ```Mean``` indicating the column contains the mean of the original dataset for this variable in either the time domain or frequency domain, denoted ```Time``` or ```Freq``` respectively.The mean was taken for only the ```mean()``` and ```std()``` measurements from the original dataset, denoted by ```Mean``` or ```Standard.Deviation``` at the end of the variable name.

The tidy data is presented in the wide tidy format.

The processing steps are described in the [```README.md```](https://github.com/ab604/data_cleaning_project/blob/master/README.md) file in this repo, along with more information about the original dataset.

Further information about the original dataset can be found at [UCI website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

```
 [1] "Subject"                                          
 [2] "Activity"                                         
 [3] "Mean.Time.BodyAcc.Mean.X"                         
 [4] "Mean.Time.BodyAcc.Mean.Y"                         
 [5] "Mean.Time.BodyAcc.Mean.Z"                         
 [6] "Mean.Time.GravityAcc.Mean.X"                      
 [7] "Mean.Time.GravityAcc.Mean.Y"                      
 [8] "Mean.Time.GravityAcc.Mean.Z"                      
 [9] "Mean.Time.BodyAccJerk.Mean.X"                     
[10] "Mean.Time.BodyAccJerk.Mean.Y"                     
[11] "Mean.Time.BodyAccJerk.Mean.Z"                     
[12] "Mean.Time.BodyGyro.Mean.X"                        
[13] "Mean.Time.BodyGyro.Mean.Y"                        
[14] "Mean.Time.BodyGyro.Mean.Z"                        
[15] "Mean.Time.BodyGyroJerk.Mean.X"                    
[16] "Mean.Time.BodyGyroJerk.Mean.Y"                    
[17] "Mean.Time.BodyGyroJerk.Mean.Z"                    
[18] "Mean.Time.BodyAccMag.Mean."                       
[19] "Mean.Time.GravityAccMag.Mean."                    
[20] "Mean.Time.BodyAccJerkMag.Mean."                   
[21] "Mean.Time.BodyGyroMag.Mean."                      
[22] "Mean.Time.BodyGyroJerkMag.Mean."                  
[23] "Mean.Freq.BodyAcc.Mean.X"                         
[24] "Mean.Freq.BodyAcc.Mean.Y"                         
[25] "Mean.Freq.BodyAcc.Mean.Z"                         
[26] "Mean.Freq.BodyAccJerk.Mean.X"                     
[27] "Mean.Freq.BodyAccJerk.Mean.Y"                     
[28] "Mean.Freq.BodyAccJerk.Mean.Z"                     
[29] "Mean.Freq.BodyGyro.Mean.X"                        
[30] "Mean.Freq.BodyGyro.Mean.Y"                        
[31] "Mean.Freq.BodyGyro.Mean.Z"                        
[32] "Mean.Freq.BodyAccMag.Mean."                       
[33] "Mean.Freq.BodyBodyAccJerkMag.Mean."               
[34] "Mean.Freq.BodyBodyGyroMag.Mean."                  
[35] "Mean.Freq.BodyBodyGyroJerkMag.Mean."              
[36] "Mean.Time.BodyAcc.Standard.Deviation.X"           
[37] "Mean.Time.BodyAcc.Standard.Deviation.Y"           
[38] "Mean.Time.BodyAcc.Standard.Deviation.Z"           
[39] "Mean.Time.GravityAcc.Standard.Deviation.X"        
[40] "Mean.Time.GravityAcc.Standard.Deviation.Y"        
[41] "Mean.Time.GravityAcc.Standard.Deviation.Z"        
[42] "Mean.Time.BodyAccJerk.Standard.Deviation.X"       
[43] "Mean.Time.BodyAccJerk.Standard.Deviation.Y"       
[44] "Mean.Time.BodyAccJerk.Standard.Deviation.Z"       
[45] "Mean.Time.BodyGyro.Standard.Deviation.X"          
[46] "Mean.Time.BodyGyro.Standard.Deviation.Y"          
[47] "Mean.Time.BodyGyro.Standard.Deviation.Z"          
[48] "Mean.Time.BodyGyroJerk.Standard.Deviation.X"      
[49] "Mean.Time.BodyGyroJerk.Standard.Deviation.Y"      
[50] "Mean.Time.BodyGyroJerk.Standard.Deviation.Z"      
[51] "Mean.Time.BodyAccMag.Standard.Deviation."         
[52] "Mean.Time.GravityAccMag.Standard.Deviation."      
[53] "Mean.Time.BodyAccJerkMag.Standard.Deviation."     
[54] "Mean.Time.BodyGyroMag.Standard.Deviation."        
[55] "Mean.Time.BodyGyroJerkMag.Standard.Deviation."    
[56] "Mean.Freq.BodyAcc.Standard.Deviation.X"           
[57] "Mean.Freq.BodyAcc.Standard.Deviation.Y"           
[58] "Mean.Freq.BodyAcc.Standard.Deviation.Z"           
[59] "Mean.Freq.BodyAccJerk.Standard.Deviation.X"       
[60] "Mean.Freq.BodyAccJerk.Standard.Deviation.Y"       
[61] "Mean.Freq.BodyAccJerk.Standard.Deviation.Z"       
[62] "Mean.Freq.BodyGyro.Standard.Deviation.X"          
[63] "Mean.Freq.BodyGyro.Standard.Deviation.Y"          
[64] "Mean.Freq.BodyGyro.Standard.Deviation.Z"          
[65] "Mean.Freq.BodyAccMag.Standard.Deviation."         
[66] "Mean.Freq.BodyBodyAccJerkMag.Standard.Deviation." 
[67] "Mean.Freq.BodyBodyGyroMag.Standard.Deviation."    
[68] "Mean.Freq.BodyBodyGyroJerkMag.Standard.Deviation."

```


