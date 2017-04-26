**Context**
-----------

This README explains how all of the scripts work and how they are connected.


----------


**The Transformation**

These following steps are required to create the Tidy.txt file from the raw data.


 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set 
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable
    for each activity and each subject.

The script also contains a prerequisite step, such as loading files and library packages needed for the transformation. Thus there is a total of 6 steps (excluding testing)

----------

**Prerequisite**

Download the data from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Save it at preferable location and set the working directory to folder "UCI HAR Dataset"

Install.packages and load library with:

 1. dplyr
 2. data.table

Load the necessary files needed to reach end state (Tidy.txt):
•	'features.txt': Feature header names
•	'activity_labels.txt': Activity ID & Label

•	'train/X_train.txt': Raw data feature training sets
•	'train/y_train.txt': Raw data activity training ID
•	'train/subject_train.txt': Subject ID training

•	'test/X_test.txt': Raw data feature test set
•	'test/y_test.txt': Raw data activity test ID
•	'train/subject_train.txt': Subject ID test

----------

**Step 1: Merge Datasets**

 1. Bind test and training data from 6 files (3 categories) to 3 data sets 
 2. Set the header names from the feature file and additional Subject and Activity headers
 3. Create one full data set

----------

**Step 2: Extract Measures**

 1. Extract measures containing Mean (not MeanFreq) and STD in the name from Full data set. Additionally, grab Subject and Activity headers.
 2. Filter full data on based on vector in based on bullet above and save into a sub data set

----------

**Step 3: Set Activity labels (variable values)**

 1. Join Activity data set with sub data set on Activity ID so that labels are part of the data set
 2. Filter out Activity ID column

 ----------

**Step 4: Change labels of measure headers**

Using gsub command, change labels of headers to appropriate values. File feauters_info.txt from source zip contains details on column names.
 ----------

**Step 5: Change labels of measure headers**

 1. Convert subject and activity to appropriately be able to group the values
 2. Group data by Subject and Activity, then aggregate each measure by the mean (average value)
 3. Order the columns by Subject and Activity
 4. Write the output, the file Tidy.txt
 ----------

**Testing**
The script contains commented sections which can help with testing. Personally, I choose to verify aggregated data against detailed data in excel due to habit.

Thanks for grading!