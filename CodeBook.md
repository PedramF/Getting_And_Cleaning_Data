**Context**
-----------

This codebook describes the data, the variables, and any transformations and work performed to clean up the data for the exercise to create the Tidy.txt file.


----------


**The Data**


The original data source to create the Tidy.txt file represents data from one of the most exciting areas in all of data science right now, wearable computing. 
Specifically, the data, *Human Activity Recognition Using Smartphones Data Set* 
is collected from the accelerometers from the Samsung Galaxy S smartphone. 

The original (raw) data is:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The full description can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# 

The Tidy.txt data set is an aggregate mean of the raw data source on the Subject (Person) and Activity performed. The result is 180 Unique groups with 66 Variables (68 Columns including Subject and Activity, 33 means, 33 STDs)


----------


**The Data Source Files**



The applicable files in the zip to create the Tidy.txt are:

•	'features.txt': Mapping table for all features Labels / Variable Header names (X data)
•	'activity_labels.txt': Mapping table for all activity IDs. / Variable names for Activity (Y Data)

•	'train/X_train.txt': Raw data feature training sets
•	'train/y_train.txt': Raw data activity training ID
•	'train/subject_train.txt': Subject ID training

•	'test/X_test.txt': Raw data feature test set
•	'test/y_test.txt': Raw data activity test ID
•	'train/subject_train.txt': Subject ID test

Others:
•	'features_info.txt': Shows information about the variables used on the feature vector.
•	'README.txt'


----------


**The Variables**

The data set consists of the following variables (columns): 

1.	  "Subject" - The ID of a the person volunteering (1-30)
2.	  "Activity" - A descriptive variable of the activity performed (6 unique values)
3.	  "TimeBodyAccelerometer-Mean-X" - The body acceleration mean on the X axis
4.	  "TimeBodyAccelerometer-Mean-Y" - The body acceleration mean on the Y axis
5.   "TimeBodyAccelerometer-Mean-Z" - The body acceleration mean on the Z axis
6.	  "TimeBodyAccelerometer-STD-X" - The body acceleration standard deviation on the X axis
7.	  "TimeBodyAccelerometer-STD-Y" - The body acceleration standard deviation on the Y axis
8.	  "TimeBodyAccelerometer-STD-Z" - The body acceleration standard deviation on the Z axis
9.	  "TimeGravityAccelerometer-Mean-X" - The gravity acceleration mean on the X axis
10. "TimeGravityAccelerometer-Mean-Y" - The gravity acceleration mean on the Y axis
11. "TimeGravityAccelerometer-Mean-Z" - The gravity acceleration mean on the Z axis
12. "TimeGravityAccelerometer-STD-X" - The gravity acceleration standard deviation on the X axis
13. "TimeGravityAccelerometer-STD-Y" - The gravity acceleration standard deviation on the Y axis
14. "TimeGravityAccelerometer-STD-Z" - The gravity acceleration standard deviation on the Z axis
15. "TimeBodyAccelerometerJerk-Mean-X"  - The body acceleration mean on the X axis, Jerk signal
16. "TimeBodyAccelerometerJerk-Mean-Y"  - The body acceleration mean on the Y axis, Jerk signal
17.  "TimeBodyAccelerometerJerk-Mean-Z"  - The body acceleration mean on the Z axis, Jerk signal
18.  "TimeBodyAccelerometerJerk-STD-X" - The body acceleration standard deviation on the X axis, Jerk signal
19.  "TimeBodyAccelerometerJerk-STD-Y" - The body acceleration standard deviation on the Y axis, Jerk signal
20.  "TimeBodyAccelerometerJerk-STD-Z" - The body acceleration standard deviation on the Z axis, Jerk signal
21.  "TimeBodyGyroscope-Mean-X"  - The body angular velocity mean on the X axis                     
22.  "TimeBodyGyroscope-Mean-Y"   - The body angular velocity mean on the Y axis                    
23.  "TimeBodyGyroscope-Mean-Z"   - The body angular velocity mean on the Z axis                    
24.  "TimeBodyGyroscope-STD-X"   - The body angular velocity standard deviation on the X axis                     
25.  "TimeBodyGyroscope-STD-Y"   - The body angular velocity standard deviation on the Y axis                         
26.  "TimeBodyGyroscope-STD-Z"   - The body angular velocity standard deviation on the Z axis                        
27.   "TimeBodyGyroscopeJerk-Mean-X" - The body angular velocity mean on the X axis, Jerk signal              
28.   "TimeBodyGyroscopeJerk-Mean-Y" - The body angular velocity mean on the Y axis, Jerk signal                  
29.   "TimeBodyGyroscopeJerk-Mean-Z" - The body angular velocity mean on the Z axis, Jerk signal                  
30.   "TimeBodyGyroscopeJerk-STD-X" - The body angular velocity standard deviation on the X axis, Jerk signal                  
31.   "TimeBodyGyroscopeJerk-STD-Y" - The body angular velocity standard deviation on the Y axis, Jerk signal                
32.   "TimeBodyGyroscopeJerk-STD-Z" - The body angular velocity standard deviation on the Z axis, Jerk signal               
33.  "TimeBodyAccelerometerMagnitude-Mean" - The body acceleration magnitude mean     
34.  "TimeBodyAccelerometerMagnitude-STD" - The body acceleration magnitude standard deviation
35.   "TimeGravityAccelerometerMagnitude-Mean" - The gravity acceleration magnitude mean    
36.   "TimeGravityAccelerometerMagnitude-STD" - The gravity acceleration magnitude standard deviation      
37.    "TimeBodyAccelerometerJerkMagnitude-Mean" - The body acceleration magnitude mean, Jerk signal      
38.    "TimeBodyAccelerometerJerkMagnitude-STD" - The body acceleration magnitude standard deviation, Jerk signal       
39. "TimeBodyGyroscopeMagnitude-Mean" - The body angular velocity magnitude mean  
40. "TimeBodyGyroscopeMagnitude-STD" - The body angular velocity magnitude standard deviation
41. "TimeBodyGyroscopeJerkMagnitude-Mean" - The body angular velocity magnitude mean, Jerk signal   
42. "TimeBodyGyroscopeJerkMagnitude-STD" - The body angular velocity magnitude standard deviation, Jerk signal       
43. "FrequencyBodyAccelerometer-Mean-X" - The body acceleration mean on the X axis, FFT 
44. "FrequencyBodyAccelerometer-Mean-Y" - The body acceleration mean on the Y axis, FFT        
45. "FrequencyBodyAccelerometer-Mean-Z" - The body acceleration mean on the Z axis, FFT    
46.  "FrequencyBodyAccelerometer-STD-X" - The body acceleration standard deviation on the X axis, FFT      
47.  "FrequencyBodyAccelerometer-STD-Y" - The body acceleration standard deviation on the Y axis, FFT        
48.  "FrequencyBodyAccelerometer-STD-Z" - The body acceleration standard deviation on the Z axis, FFT     
49. "FrequencyBodyAccelerometerJerk-Mean-X" - The body acceleration mean on the X axis, FFT Jerk signal    
50. "FrequencyBodyAccelerometerJerk-Mean-Y" - The body acceleration mean on the Y axis, FFT Jerk signal        
51. "FrequencyBodyAccelerometerJerk-Mean-Z" - The body acceleration mean on the Z axis, FFT Jerk signal        
52.  "FrequencyBodyAccelerometerJerk-STD-X" - The body acceleration standard deviation on the X axis, FFT Jerk signal      
53. "FrequencyBodyAccelerometerJerk-STD-Y" - The body acceleration standard deviation on the Y axis, FFT Jerk signal          
54. "FrequencyBodyAccelerometerJerk-STD-Z" - The body acceleration standard deviation on the Z axis, FFT Jerk signal        
55. "FrequencyBodyGyroscope-Mean-X"  - The body angular velocity mean on the X axis, FFT     
56.  "FrequencyBodyGyroscope-Mean-Y"  - The body angular velocity mean on the Y axis, FFT     
57.  "FrequencyBodyGyroscope-Mean-Z"  - The body angular velocity mean on the Z axis, FFT          
58.  "FrequencyBodyGyroscope-STD-X"  - The body angular velocity standard deviation on the X axis, FFT        
59.  "FrequencyBodyGyroscope-STD-Y"  - The body angular velocity standard deviation on the Y axis, FFT        
60.  "FrequencyBodyGyroscope-STD-Z"  - The body angular velocity standard deviation on the Z axis, FFT        
61.  "FrequencyBodyAccelerometerMagnitude-Mean" - The body acceleration magnitude mean, FFT     
62.  "FrequencyBodyAccelerometerMagnitude-STD" - The body acceleration magnitude standard deviation, FFT    
63. "FrequencyBodyAccelerometerJerkMagnitude-Mean" - The body acceleration magnitude mean, FFT Jerk signal 
64. "FrequencyBodyAccelerometerJerkMagnitude-STD" - The body acceleration magnitude standard deviation, FFT Jerk signal 
65. "FrequencyBodyGyroscopeMagnitude-Mean"  - The body angular velocity magnitude mean, FFT  
66.  "FrequencyBodyGyroscopeMagnitude-STD"  - The body angular velocity magnitude standard deviation, FFT    
67. "FrequencyBodyGyroscopeJerkMagnitude-Mean"  - The body angular velocity magnitude mean, FFT Jerk signal  
68. "FrequencyBodyGyroscopeJerkMagnitude-STD"  - The body angular velocity magnitude standard deviation, FFT Jerk signal


----------


**The Transformation**

These following steps are required to create the Tidy.txt file from the raw data.
Please see the README.md for further explanation of the script:

 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set 
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable
    for each activity and each subject.

