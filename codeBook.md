## Tidy Data

 Bruno G. Tavares


## Introduction

Tidy data is a data set that has been merged, cleaned and filtered from a bigger data set that comprises of 3 subsets and 8 files.


## Subsets

1. The values of 'Activity' consist of data from 'y_train.txt' and 'y_test.txt'
The types/names of 'Activity' can be found at 'activity_labels.txt'

2. The values of 'Subject' consist of data from 'subject_train.txt' and 'subject_test.txt'

3. The values of 'Features' consist of data from 'X_train.txt' and 'X_test.txt'.
The names of the variables 'Features' can be found at 'features.txt'


## Source Data

The source data is divided in the following way:

- 'features.txt': List of all the names of features (variables).

- 'activity_labels.txt': Links the class labels with their activity name.

- 'X_train.txt': Training set.

- 'y_train.txt': Training labels.

- 'X_test.txt': Test set.

- 'y_test.txt': Test labels.

- 'subject_train.txt' and 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The source data for this project can be found [here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


## Steps to create Tidy Data

The steps to create Tidy data are registered on the script *run_analysis.R* and will be described here:

 * Step 1:
 Merge the training and test sets to create one data set

 X_train.txt and X_test.txt were merged to create Features Data
 y_train.txt and y_test.txt were merged to create Activity Data
 subject_train.txt and subject_test.txt were merged to create Subject Data

 Features, Activity and Subject datas were merged into a single data set: allData

 * Step 2:
 Extracts only the measurements on the mean and standard deviation for each measurement.

 features.txt was used to get only columns with mean() or std() in their names and reassigned on allData

 * Step 3:
 Use descriptive activity names to name the activities in the data set

 activity_Labels.txt is used update values with correct activity names on allData.

 * Step 4:
  Appropriately label the data set with descriptive variable names

  Use gsub function for pattern replacement to clean up the data labels

 * Step 5:
 Create a second, independent tidy data set with the average of each variable for each activity and each subject.

 Per the project instructions, we need to produce only a data set with the average of each variable for each activity and subject. That was accomplished with the use of ddply


## Variables:

Tidy data variables list and overview

Human Activity Recognition Using Smartphones Tidy Data Set


===================================================================

   timeBodyAccelerometer-mean()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:   0.263
        Median:   0.277
          Mean:   0.274
       3rd Qu.:   0.288
          Max.:   1.000

===================================================================

   timeBodyAccelerometer-mean()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.025
        Median:  -0.017
          Mean:  -0.018
       3rd Qu.:  -0.011
          Max.:   1.000

===================================================================

   timeBodyAccelerometer-mean()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.121
        Median:  -0.109
          Mean:  -0.109
       3rd Qu.:  -0.098
          Max.:   1.000

===================================================================

   timeBodyAccelerometer-std()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.943
          Mean:  -0.608
       3rd Qu.:  -0.250
          Max.:   1.000

===================================================================

   timeBodyAccelerometer-std()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.977
        Median:  -0.835
          Mean:  -0.510
       3rd Qu.:  -0.057
          Max.:   1.000

===================================================================

   timeBodyAccelerometer-std()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.979
        Median:  -0.851
          Mean:  -0.613
       3rd Qu.:  -0.279
          Max.:   1.000

===================================================================

   timeGravityAccelerometer-mean()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:   0.812
        Median:   0.922
          Mean:   0.669
       3rd Qu.:   0.955
          Max.:   1.000

===================================================================

   timeGravityAccelerometer-mean()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.243
        Median:  -0.144
          Mean:   0.004
       3rd Qu.:   0.119
          Max.:   1.000

===================================================================

   timeGravityAccelerometer-mean()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.117
        Median:   0.037
          Mean:   0.092
       3rd Qu.:   0.216
          Max.:   1.000

===================================================================

   timeGravityAccelerometer-std()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.995
        Median:  -0.982
          Mean:  -0.965
       3rd Qu.:  -0.962
          Max.:   1.000

===================================================================

   timeGravityAccelerometer-std()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.976
          Mean:  -0.954
       3rd Qu.:  -0.946
          Max.:   1.000

===================================================================

   timeGravityAccelerometer-std()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.987
        Median:  -0.967
          Mean:  -0.939
       3rd Qu.:  -0.930
          Max.:   1.000

===================================================================

   timeBodyAccelerometerJerk-mean()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:   0.063
        Median:   0.076
          Mean:   0.079
       3rd Qu.:   0.091
          Max.:   1.000

===================================================================

   timeBodyAccelerometerJerk-mean()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.019
        Median:   0.011
          Mean:   0.008
       3rd Qu.:   0.034
          Max.:   1.000

===================================================================

   timeBodyAccelerometerJerk-mean()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.032
        Median:  -0.001
          Mean:  -0.005
       3rd Qu.:   0.025
          Max.:   1.000

===================================================================

   timeBodyAccelerometerJerk-std()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.951
          Mean:  -0.640
       3rd Qu.:  -0.291
          Max.:   1.000

===================================================================

   timeBodyAccelerometerJerk-std()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.925
          Mean:  -0.608
       3rd Qu.:  -0.222
          Max.:   1.000

===================================================================

   timeBodyAccelerometerJerk-std()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.989
        Median:  -0.954
          Mean:  -0.763
       3rd Qu.:  -0.548
          Max.:   1.000

===================================================================

   timeBodyGyroscope-mean()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.046
        Median:  -0.028
          Mean:  -0.031
       3rd Qu.:  -0.011
          Max.:   1.000

===================================================================

   timeBodyGyroscope-mean()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.104
        Median:  -0.075
          Mean:  -0.075
       3rd Qu.:  -0.051
          Max.:   1.000

===================================================================

   timeBodyGyroscope-mean()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:   0.065
        Median:   0.086
          Mean:   0.088
       3rd Qu.:   0.110
          Max.:   1.000

===================================================================

   timeBodyGyroscope-std()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.987
        Median:  -0.902
          Mean:  -0.721
       3rd Qu.:  -0.482
          Max.:   1.000

===================================================================

   timeBodyGyroscope-std()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.911
          Mean:  -0.683
       3rd Qu.:  -0.446
          Max.:   1.000

===================================================================

   timeBodyGyroscope-std()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.882
          Mean:  -0.654
       3rd Qu.:  -0.338
          Max.:   1.000

===================================================================

   timeBodyGyroscopeJerk-mean()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.117
        Median:  -0.098
          Mean:  -0.097
       3rd Qu.:  -0.079
          Max.:   1.000

===================================================================

   timeBodyGyroscopeJerk-mean()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.059
        Median:  -0.041
          Mean:  -0.042
       3rd Qu.:  -0.025
          Max.:   1.000

===================================================================

   timeBodyGyroscopeJerk-mean()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.079
        Median:  -0.055
          Mean:  -0.055
       3rd Qu.:  -0.032
          Max.:   1.000

===================================================================

   timeBodyGyroscopeJerk-std()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.935
          Mean:  -0.731
       3rd Qu.:  -0.486
          Max.:   1.000

===================================================================

   timeBodyGyroscopeJerk-std()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.955
          Mean:  -0.786
       3rd Qu.:  -0.627
          Max.:   1.000

===================================================================

   timeBodyGyroscopeJerk-std()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.993
        Median:  -0.950
          Mean:  -0.740
       3rd Qu.:  -0.510
          Max.:   1.000

===================================================================

   timeBodyAccelerometerMagnitude-mean()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.875
          Mean:  -0.548
       3rd Qu.:  -0.120
          Max.:   1.000

===================================================================

   timeBodyAccelerometerMagnitude-std()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.844
          Mean:  -0.591
       3rd Qu.:  -0.242
          Max.:   1.000

===================================================================

   timeGravityAccelerometerMagnitude-mean()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.875
          Mean:  -0.548
       3rd Qu.:  -0.120
          Max.:   1.000

===================================================================

   timeGravityAccelerometerMagnitude-std()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.844
          Mean:  -0.591
       3rd Qu.:  -0.242
          Max.:   1.000

===================================================================

   timeBodyAccelerometerJerkMagnitude-mean()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.990
        Median:  -0.948
          Mean:  -0.649
       3rd Qu.:  -0.296
          Max.:   1.000

===================================================================

   timeBodyAccelerometerJerkMagnitude-std()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.929
          Mean:  -0.628
       3rd Qu.:  -0.273
          Max.:   1.000

===================================================================

   timeBodyGyroscopeMagnitude-mean()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.978
        Median:  -0.822
          Mean:  -0.605
       3rd Qu.:  -0.245
          Max.:   1.000

===================================================================

   timeBodyGyroscopeMagnitude-std()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.978
        Median:  -0.826
          Mean:  -0.662
       3rd Qu.:  -0.394
          Max.:   1.000

===================================================================

   timeBodyGyroscopeJerkMagnitude-mean()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.956
          Mean:  -0.762
       3rd Qu.:  -0.550
          Max.:   1.000

===================================================================

   timeBodyGyroscopeJerkMagnitude-std()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.940
          Mean:  -0.778
       3rd Qu.:  -0.609
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometer-mean()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.946
          Mean:  -0.623
       3rd Qu.:  -0.265
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometer-mean()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.979
        Median:  -0.864
          Mean:  -0.537
       3rd Qu.:  -0.103
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometer-mean()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.983
        Median:  -0.895
          Mean:  -0.665
       3rd Qu.:  -0.366
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometer-std()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.993
        Median:  -0.942
          Mean:  -0.603
       3rd Qu.:  -0.249
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometer-std()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.977
        Median:  -0.833
          Mean:  -0.528
       3rd Qu.:  -0.092
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometer-std()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.978
        Median:  -0.840
          Mean:  -0.618
       3rd Qu.:  -0.302
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerJerk-mean()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.952
          Mean:  -0.657
       3rd Qu.:  -0.327
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerJerk-mean()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.926
          Mean:  -0.629
       3rd Qu.:  -0.264
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerJerk-mean()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.987
        Median:  -0.948
          Mean:  -0.744
       3rd Qu.:  -0.513
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerJerk-std()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.956
          Mean:  -0.655
       3rd Qu.:  -0.320
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerJerk-std()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.987
        Median:  -0.928
          Mean:  -0.612
       3rd Qu.:  -0.236
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerJerk-std()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.990
        Median:  -0.959
          Mean:  -0.781
       3rd Qu.:  -0.590
          Max.:   1.000

===================================================================

   frequencyBodyGyroscope-mean()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.892
          Mean:  -0.672
       3rd Qu.:  -0.384
          Max.:   1.000

===================================================================

   frequencyBodyGyroscope-mean()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.920
          Mean:  -0.706
       3rd Qu.:  -0.473
          Max.:   1.000

===================================================================

   frequencyBodyGyroscope-mean()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.888
          Mean:  -0.644
       3rd Qu.:  -0.323
          Max.:   1.000

===================================================================

   frequencyBodyGyroscope-std()-X

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.988
        Median:  -0.905
          Mean:  -0.739
       3rd Qu.:  -0.522
          Max.:   1.000

===================================================================

   frequencyBodyGyroscope-std()-Y

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.981
        Median:  -0.906
          Mean:  -0.674
       3rd Qu.:  -0.439
          Max.:   1.000

===================================================================

   frequencyBodyGyroscope-std()-Z

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.986
        Median:  -0.891
          Mean:  -0.690
       3rd Qu.:  -0.417
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerMagnitude-mean()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.875
          Mean:  -0.586
       3rd Qu.:  -0.217
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerMagnitude-std()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.983
        Median:  -0.855
          Mean:  -0.659
       3rd Qu.:  -0.382
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerJerkMagnitude-mean()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.990
        Median:  -0.929
          Mean:  -0.621
       3rd Qu.:  -0.260
          Max.:   1.000

===================================================================

   frequencyBodyAccelerometerJerkMagnitude-std()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.925
          Mean:  -0.640
       3rd Qu.:  -0.308
          Max.:   1.000

===================================================================

   frequencyBodyGyroscopeMagnitude-mean()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.983
        Median:  -0.876
          Mean:  -0.697
       3rd Qu.:  -0.451
          Max.:   1.000

===================================================================

   frequencyBodyGyroscopeMagnitude-std()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.978
        Median:  -0.828
          Mean:  -0.700
       3rd Qu.:  -0.471
          Max.:   1.000

===================================================================

   frequencyBodyGyroscopeJerkMagnitude-mean()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.945
          Mean:  -0.780
       3rd Qu.:  -0.612
          Max.:   1.000

===================================================================

   frequencyBodyGyroscopeJerkMagnitude-std()

-------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.993
        Median:  -0.938
          Mean:  -0.792
       3rd Qu.:  -0.644
          Max.:   1.000

===================================================================

   subject

-------------------------------------------------------------------

   Storage mode: integer

          Min.:   1.000
       1st Qu.:   9.000
        Median:  17.000
          Mean:  16.150
       3rd Qu.:  24.000
          Max.:  30.000

===================================================================

   activity

-------------------------------------------------------------------

   Storage mode: integer
   Factor with 6 levels

        Values and labels    N    Percent

   1 'LAYING'             1944   18.9     
   2 'SITTING'            1777   17.3     
   3 'STANDING'           1906   18.5     
   4 'WALKING'            1722   16.7     
   5 'WALKING_DOWNSTAIRS' 1406   13.7     
   6 'WALKING_UPSTAIRS'   1544   15.0     
