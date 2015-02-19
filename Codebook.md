Getting and Cleaning Data Course Project Codebook
========================================================

This is the code book for the Getting and Cleaning Data course project containing the variable names for the file: ```tidy_dat.txt``` created by the R script: [```run_analysis.R```](https://github.com/ab604/data_cleaning_project/blob/master/run_analysis.R)

The original UCI Human Activity Recognition Using Smartphones Dataset contained fixed variables of 30 Subjects performing 6 Activities. These fixed variables are in columns 1 and 2 of ```tidy_dat.txt``` as shown in the list below.

The measured variable codes refer to accelerometer and gyroscope measurements from a smartphone (Samsung Galaxy S II) worn on the waist, denoted ```BodyAcc``` and ```BodyGyro``` respectively. The acceleration signals are also separated into body and gravity acceleration signals, where the gravity acceleration is denoted ```GravityAcc```. 

Body linear acceleration and angular velocity were derived in the time domain to obtain ```Jerk``` signals

The magnitude of these three-dimensional signals were calculated using the Euclidean norm denoted ```Mag``` where ```X``` , ```Y``` and ```Z``` are used to denote 3-axial signals in the X, Y and Z directions.

The tidy processed measured variables are in columns 3 to 68 of ```tidy_dat.txt```  as shown in the list below. These variables are prefixed with ```Mean``` indicating the column contains the mean of the original dataset for this variable in either the time domain or frequency domain, denoted ```Time``` or ```Freq``` respectively.

The tidy data is presented in the wide tidy format.

The processing steps are described in the [```README.md```](https://github.com/ab604/data_cleaning_project/blob/master/README.md) file in this repo, along with more information about the original dataset.

Further information about the original dataset can be found at [UCI website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

```
 [1] "Subject"                                        
 [2] "Activity"                                       
 [3] "Mean.Time.BodyAccMeanX"                         
 [4] "Mean.Time.BodyAccMeanY"                         
 [5] "Mean.Time.BodyAccMeanZ"                         
 [6] "Mean.Time.GravityAccMeanX"                      
 [7] "Mean.Time.GravityAccMeanY"                      
 [8] "Mean.Time.GravityAccMeanZ"                      
 [9] "Mean.Time.BodyAccJerkMeanX"                     
[10] "Mean.Time.BodyAccJerkMeanY"                     
[11] "Mean.Time.BodyAccJerkMeanZ"                     
[12] "Mean.Time.BodyGyroMeanX"                        
[13] "Mean.Time.BodyGyroMeanY"                        
[14] "Mean.Time.BodyGyroMeanZ"                        
[15] "Mean.Time.BodyGyroJerkMeanX"                    
[16] "Mean.Time.BodyGyroJerkMeanY"                    
[17] "Mean.Time.BodyGyroJerkMeanZ"                    
[18] "Mean.Time.BodyAccMagMean"                       
[19] "Mean.Time.GravityAccMagMean"                    
[20] "Mean.Time.BodyAccJerkMagMean"                   
[21] "Mean.Time.BodyGyroMagMean"                      
[22] "Mean.Time.BodyGyroJerkMagMean"                  
[23] "Mean.Freq.BodyAccMeanX"                         
[24] "Mean.Freq.BodyAccMeanY"                         
[25] "Mean.Freq.BodyAccMeanZ"                         
[26] "Mean.Freq.BodyAccJerkMeanX"                     
[27] "Mean.Freq.BodyAccJerkMeanY"                     
[28] "Mean.Freq.BodyAccJerkMeanZ"                     
[29] "Mean.Freq.BodyGyroMeanX"                        
[30] "Mean.Freq.BodyGyroMeanY"                        
[31] "Mean.Freq.BodyGyroMeanZ"                        
[32] "Mean.Freq.BodyAccMagMean"                       
[33] "Mean.Freq.BodyBodyAccJerkMagMean"               
[34] "Mean.Freq.BodyBodyGyroMagMean"                  
[35] "Mean.Freq.BodyBodyGyroJerkMagMean"              
[36] "Mean.Time.BodyAccStandard.DeviationX"           
[37] "Mean.Time.BodyAccStandard.DeviationY"           
[38] "Mean.Time.BodyAccStandard.DeviationZ"           
[39] "Mean.Time.GravityAccStandard.DeviationX"        
[40] "Mean.Time.GravityAccStandard.DeviationY"        
[41] "Mean.Time.GravityAccStandard.DeviationZ"        
[42] "Mean.Time.BodyAccJerkStandard.DeviationX"       
[43] "Mean.Time.BodyAccJerkStandard.DeviationY"       
[44] "Mean.Time.BodyAccJerkStandard.DeviationZ"       
[45] "Mean.Time.BodyGyroStandard.DeviationX"          
[46] "Mean.Time.BodyGyroStandard.DeviationY"          
[47] "Mean.Time.BodyGyroStandard.DeviationZ"          
[48] "Mean.Time.BodyGyroJerkStandard.DeviationX"      
[49] "Mean.Time.BodyGyroJerkStandard.DeviationY"      
[50] "Mean.Time.BodyGyroJerkStandard.DeviationZ"      
[51] "Mean.Time.BodyAccMagStandard.Deviation"         
[52] "Mean.Time.GravityAccMagStandard.Deviation"      
[53] "Mean.Time.BodyAccJerkMagStandard.Deviation"     
[54] "Mean.Time.BodyGyroMagStandard.Deviation"        
[55] "Mean.Time.BodyGyroJerkMagStandard.Deviation"    
[56] "Mean.Freq.BodyAccStandard.DeviationX"           
[57] "Mean.Freq.BodyAccStandard.DeviationY"           
[58] "Mean.Freq.BodyAccStandard.DeviationZ"           
[59] "Mean.Freq.BodyAccJerkStandard.DeviationX"       
[60] "Mean.Freq.BodyAccJerkStandard.DeviationY"       
[61] "Mean.Freq.BodyAccJerkStandard.DeviationZ"       
[62] "Mean.Freq.BodyGyroStandard.DeviationX"          
[63] "Mean.Freq.BodyGyroStandard.DeviationY"          
[64] "Mean.Freq.BodyGyroStandard.DeviationZ"          
[65] "Mean.Freq.BodyAccMagStandard.Deviation"         
[66] "Mean.Freq.BodyBodyAccJerkMagStandard.Deviation" 
[67] "Mean.Freq.BodyBodyGyroMagStandard.Deviation"    
[68] "Mean.Freq.BodyBodyGyroJerkMagStandard.Deviation"

```


