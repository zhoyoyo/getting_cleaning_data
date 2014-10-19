# Code Book


## Part 1: variables

The tidy data file contains two identity columns:

- 'id': identifies the subject who performed the acitivity for each window sample.  
- 'activity': identifies the activity measured. There are six kinds of activities.

The tidy data also contains 86 measurement columns that specify the average value on each measurement on each activity for each subject. The naming conventions for most measurement variables follow the format below:

**[prefix][signal name]_[method]\_[dimension]**

- Prefix 't' and 'f' are used to denote time domain signals and frequency domain signals respectively.

- Signal names include the following:
 	* BodyAcc
 	* BodyGyro
 	* BodyAccJerk
 	* BodyAccMag
 	* BodyGyroJerk
 	* BodyGyroMag
 	* BodyAccJerkMag
 	* BodyGyroJerkMag
 	* GravityAcc
	* GravityAccMag


- Three methods are used here:
	* mean: Mean value
	* std: Standard deviation
	* meanFreq: weighted average of frequency components to obtain a mean frequency


- Dimensions: 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The measurements that do not follow the format above are used to measure the angle between vectors. However, they still follow the naming convenions of prefix, signal names, and methods. There are seven of them.


## Part 2: Summary choices

The data processing choices are explicitly commented in run_analysis.R. Here's a recap that highlights my individual choices for each of the five steps I took:


###### Step 1: Merges the training and the test sets to create one data set.

No summary choices applied. The result of this step is a merged datset with 10299 obsevations of 1716 variables. Specifically, I created a 'type' variable to differentiate 'test sets' from 'train sets.'

###### Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

All variables with 'std' and 'mean' in their names were extracted. The 'activity' and 'subject' identifiers were preserved.

###### Step 3: Uses descriptive activity names to name the activities in the data set

No summary/individual choices made. 

###### Step 4: Appropriately labels the data set with descriptive variable names

I intentially formatted the variables to fit a specific format for easy interpretation. The format was introduced in Part 1 of the code book.

###### Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

No summary/individual choices made. The reuslt is a tidy dataset with 180 observations of 88 variables.