# Code Book

This code book describes the variables, data, and transformations used in the preparation of the tidy dataset.

## Data Source

The data used in this project is derived from the Human Activity Recognition Using Smartphones Data Set. It includes data collected from the accelerometers and gyroscopes of the Samsung Galaxy S smartphone.

## Data Files

- `features.txt`: List of all features.
- `activity_labels.txt`: Links the class labels with their activity name.
- `train/X_train.txt`: Training set.
- `train/y_train.txt`: Training labels.
- `train/subject_train.txt`: Each row identifies the subject who performed the activity.
- `test/X_test.txt`: Test set.
- `test/y_test.txt`: Test labels.
- `test/subject_test.txt`: Each row identifies the subject who performed the activity.

## Variables

The final tidy data set contains the following variables:

### Subject and Activity

- `SubjectNum`: Identifier for the subject who performed the activity (1-30).
- `Activity`: Descriptive activity name.

### Measurements

- `TimeBodyAccelerometerMeanX`
- `TimeBodyAccelerometerMeanY`
- `TimeBodyAccelerometerMeanZ`
- `TimeBodyAccelerometerSTDdevX`
- `TimeBodyAccelerometerSTDdevY`
- `TimeBodyAccelerometerSTDdevZ`
- `TimeGravityAccelerometerMeanX`
- `TimeGravityAccelerometerMeanY`
- `TimeGravityAccelerometerMeanZ`
- `TimeGravityAccelerometerSTDdevX`
- `TimeGravityAccelerometerSTDdevY`
- `TimeGravityAccelerometerSTDdevZ`
- `TimeBodyAccelerometerJerkMeanX`
- `TimeBodyAccelerometerJerkMeanY`
- `TimeBodyAccelerometerJerkMeanZ`
- `TimeBodyAccelerometerJerkSTDdevX`
- `TimeBodyAccelerometerJerkSTDdevY`
- `TimeBodyAccelerometerJerkSTDdevZ`
- `TimeBodyGyroscopeMeanX`
- `TimeBodyGyroscopeMeanY`
- `TimeBodyGyroscopeMeanZ`
- `TimeBodyGyroscopeSTDdevX`
- `TimeBodyGyroscopeSTDdevY`
- `TimeBodyGyroscopeSTDdevZ`
- `TimeBodyGyroscopeJerkMeanX`
- `TimeBodyGyroscopeJerkMeanY`
- `TimeBodyGyroscopeJerkMeanZ`
- `TimeBodyGyroscopeJerkSTDdevX`
- `TimeBodyGyroscopeJerkSTDdevY`
- `TimeBodyGyroscopeJerkSTDdevZ`
- `TimeBodyAccelerometerMagnitudeMean`
- `TimeBodyAccelerometerMagnitudeSTDdev`
- `TimeGravityAccelerometerMagnitudeMean`
- `TimeGravityAccelerometerMagnitudeSTDdev`
- `TimeBodyAccelerometerJerkMagnitudeMean`
- `TimeBodyAccelerometerJerkMagnitudeSTDdev`
- `TimeBodyGyroscopeMagnitudeMean`
- `TimeBodyGyroscopeMagnitudeSTDdev`
- `TimeBodyGyroscopeJerkMagnitudeMean`
- `TimeBodyGyroscopeJerkMagnitudeSTDdev`
- `FrequencyBodyAccelerometerMeanX`
- `FrequencyBodyAccelerometerMeanY`
- `FrequencyBodyAccelerometerMeanZ`
- `FrequencyBodyAccelerometerSTDdevX`
- `FrequencyBodyAccelerometerSTDdevY`
- `FrequencyBodyAccelerometerSTDdevZ`
- `FrequencyBodyAccelerometerJerkMeanX`
- `FrequencyBodyAccelerometerJerkMeanY`
- `FrequencyBodyAccelerometerJerkMeanZ`
- `FrequencyBodyAccelerometerJerkSTDdevX`
- `FrequencyBodyAccelerometerJerkSTDdevY`
- `FrequencyBodyAccelerometerJerkSTDdevZ`
- `FrequencyBodyGyroscopeMeanX`
- `FrequencyBodyGyroscopeMeanY`
- `FrequencyBodyGyroscopeMeanZ`
- `FrequencyBodyGyroscopeSTDdevX`
- `FrequencyBodyGyroscopeSTDdevY`
- `FrequencyBodyGyroscopeSTDdevZ`
- `FrequencyBodyAccelerometerMagnitudeMean`
- `FrequencyBodyAccelerometerMagnitudeSTDdev`
- `FrequencyBodyAccelerometerJerkMagnitudeMean`
- `FrequencyBodyAccelerometerJerkMagnitudeSTDdev`
- `FrequencyBodyGyroscopeMagnitudeMean`
- `FrequencyBodyGyroscopeMagnitudeSTDdev`
- `FrequencyBodyGyroscopeJerkMagnitudeMean`
- `FrequencyBodyGyroscopeJerkMagnitudeSTDdev`

## Units

All measurements are normalized and bounded within [-1, 1].

## Transformations

1. **Data Merging**: The training and test datasets were merged to create one dataset.
2. **Extracting Measurements**: Only measurements on the mean and standard deviation were extracted.
3. **Activity Naming**: Descriptive activity names were used to name the activities in the dataset.
4. **Labeling**: The dataset was appropriately labeled with descriptive variable names.
5. **Creating Tidy Data**: A second, independent tidy dataset was created with the average of each variable for each activity and each subject.

---

**Author**: Gudi V. Chandra Sekhar
