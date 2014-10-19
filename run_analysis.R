# FIRST, MAKE SURE THE DATA IS IN YOUR DIRECTORY... IF NOT, DOWNLOAD IT HERE: 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# THEN, Set to your working directory
#setwd("~/Documents/Learning/cousera/getting and cleaning data")

# THEN..


## STEP 1
## Merges the training and the test sets to create one data set

#Process test data
  #Get ID
  test_subject <- read.table('UCI HAR Dataset/test/subject_test.txt',sep=' ',col.names='id')
  #Get activity
  test_activity <- read.table('UCI HAR Dataset/test/y_test.txt',sep=' ',col.names='activity')
  #get features
  features_process <- read.table('UCI HAR Dataset/features.txt',sep=' ',col.names=c('activity_number','activity'))
  features <- features_process$activity
  test_features <- read.table('UCI HAR Dataset/test/X_test.txt',col.names=features)
  #get three dimension data -1 
  body_acc_x_test <- read.table('UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt')
  colnames(body_acc_x_test) = paste(colnames(body_acc_x_test),'body_acc_x',sep='_')
  body_acc_y_test <- read.table('UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt')
  colnames(body_acc_y_test) = paste(colnames(body_acc_y_test),'body_acc_y',sep='_')
  body_acc_z_test <- read.table('UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt')
  colnames(body_acc_z_test) = paste(colnames(body_acc_z_test),'body_acc_z',sep='_')
  #get three dimension data -2 
  body_gyro_x_test <- read.table('UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt')
  colnames(body_gyro_x_test) = paste(colnames(body_gyro_x_test),'body_gyro_x',sep='_')
  body_gyro_y_test <- read.table('UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt')
  colnames(body_gyro_y_test) = paste(colnames(body_gyro_y_test),'body_gyro_y',sep='_')
  body_gyro_z_test <- read.table('UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt')
  colnames(body_gyro_z_test) = paste(colnames(body_gyro_z_test),'body_gyro_z',sep='_')
  #get three dimension data -3
  total_acc_x_test <- read.table('UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt')
  colnames(total_acc_x_test) = paste(colnames(total_acc_x_test),'total_acc_x',sep='_')
  total_acc_y_test <- read.table('UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt')
  colnames(total_acc_y_test) = paste(colnames(total_acc_y_test),'total_acc_y',sep='_')
  total_acc_z_test <- read.table('UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt')
  colnames(total_acc_z_test) = paste(colnames(total_acc_z_test),'total_acc_z',sep='_')
  
  #Merge test data into one
  testData = data.frame(test_subject,test_activity,test_features,
                        body_acc_x_test,body_acc_y_test,body_acc_z_test,
                        body_gyro_x_test,body_gyro_y_test,body_gyro_z_test,
                        total_acc_x_test,total_acc_y_test,total_acc_z_test)
  #Add identifier to the data
  testData$type = 'test'


#Process train data
  #Get ID
  train_subject <- read.table('UCI HAR Dataset/train/subject_train.txt',sep=' ',col.names='id')
  #Get activity
  train_activity <- read.table('UCI HAR Dataset/train/y_train.txt',sep=' ',col.names='activity')
  #get features
  features_process <- read.table('UCI HAR Dataset/features.txt',sep=' ',col.names=c('activity_number','activity'))
  features <- features_process$activity
  train_features <- read.table('UCI HAR Dataset/train/X_train.txt',col.names=features)
  #get three dimension data -1 
  body_acc_x_train <- read.table('UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt')
  colnames(body_acc_x_train) = paste(colnames(body_acc_x_train),'body_acc_x',sep='_')
  body_acc_y_train <- read.table('UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt')
  colnames(body_acc_y_train) = paste(colnames(body_acc_y_train),'body_acc_y',sep='_')
  body_acc_z_train <- read.table('UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt')
  colnames(body_acc_z_train) = paste(colnames(body_acc_z_train),'body_acc_z',sep='_')
  #get three dimension data -2 
  body_gyro_x_train <- read.table('UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt')
  colnames(body_gyro_x_train) = paste(colnames(body_gyro_x_train),'body_gyro_x',sep='_')
  body_gyro_y_train <- read.table('UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt')
  colnames(body_gyro_y_train) = paste(colnames(body_gyro_y_train),'body_gyro_y',sep='_')
  body_gyro_z_train <- read.table('UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt')
  colnames(body_gyro_z_train) = paste(colnames(body_gyro_z_train),'body_gyro_z',sep='_')
  #get three dimension data -3
  total_acc_x_train <- read.table('UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt')
  colnames(total_acc_x_train) = paste(colnames(total_acc_x_train),'total_acc_x',sep='_')
  total_acc_y_train <- read.table('UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt')
  colnames(total_acc_y_train) = paste(colnames(total_acc_y_train),'total_acc_y',sep='_')
  total_acc_z_train <- read.table('UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt')
  colnames(total_acc_z_train) = paste(colnames(total_acc_z_train),'total_acc_z',sep='_')
  
  #Merge train data into one
  trainData = data.frame(train_subject,train_activity,train_features,
                         body_acc_x_train,body_acc_y_train,body_acc_z_train,
                         body_gyro_x_train,body_gyro_y_train,body_gyro_z_train,
                         total_acc_x_train,total_acc_y_train,total_acc_z_train)
  #Add identifier to the data
  trainData$type = 'train'


#Merge two datasets
  data <- rbind(testData,trainData)





## STEP 2
## Extracts only the measurements on the mean and standard deviation for each measurement

  # get the index of variables with mean() or std() in the variable name
  indexList <- grep(pattern='(.mean..|.std..)',colnames(data),ignore.case=T)
  newData <- data[indexList]
  newData$id <- data$id
  newData$activity <- data$activity
  newData$type <- data$type






## STEP 3
## Uses descriptive activity names to name the activities in the data set
  
  labels <- read.table('UCI HAR Dataset/activity_labels.txt',col.names=c('activity','labels'))
  newData_3 <- merge(labels,newData,all=T)





## STEP 4
## Appropriately labels the data set with descriptive variable names

  #find and replace '...' with underscore
  colnames(newData_3) <- gsub(pattern='[[:punct:]]',replacement='_',colnames(newData_3),ignore.case=T)
  colnames(newData_3) <- gsub(pattern='___',replacement='_',colnames(newData_3),ignore.case=T)
  colnames(newData_3) <- gsub(pattern='__',replacement='_',colnames(newData_3),ignore.case=T)
  colnames(newData_3) <- gsub(pattern='_$',replacement='',colnames(newData_3),ignore.case=T)
  #this is to do the work that STEP 3 didn't do the best
  newData_4 <- newData_3[,-1]
  colnames(newData_4)[1] <- 'activity'
  #write back to the original dataset since this is the one we want to get as the first tidy data
  data <- newData_4




## STEP 5
## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject
  
  library(plyr)
  data5 <- ddply(newData_4,.(id,activity),numcolwise(mean))
  #write the table for upload to your current directory
  write.table(data5,'data_cleaned.txt',sep='\t',row.name=F)
  
