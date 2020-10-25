# Codebook
Specifications and relevant information about the variables and measures output by the run_analysis.R script.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and tBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMag, timeGravityAccelerometerMag, timeBodyAccelerometerJerkMag, timeBodyGyroscopeMag, timeBodyGyroscopeJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMag, frequencyBodyGyroscopeMag, frequencyBodyGyroscopeJerkMag. (Note the 'frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- timeBodyAccelerometer-XYZ
- timeGravityAccelerometer-XYZ
- timeBodyAccelerometerJerk-XYZ
- timeBodyGyroscope-XYZ
- timeBodyGyroscopeJerk-XYZ
- timeBodyAccelerometerMag
- timeGravityAccelerometerMag
- timeBodyAccelerometerJerkMag
- timeBodyGyroscopeMag
- timeBodyGyroscopeJerkMag
- frequencyBodyAccelerometer-XYZ
- frequencyBodyAccelerometerJerk-XYZ
- frequencyBodyGyroscope-XYZ
- frequencyBodyAccelerometerMag
- frequencyBodyAccelerometerJerkMag
- frequencyBodyGyroscopeMag
- frequencyBodyGyroscopeJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking-upstairs, walking-downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
  
**Two additional features are created from this information:**

- subjects : id of the subjects. Ranges from 1-30
- labels : indicates the activity that was performed by that particular subject. (walking, walking-upstairs, walking-downstairs, sitting, standing, laying)

**tidy_data.txt**
* This data set presents the same variables as the full data set with some particularities:
1. Each observation presents the *mean* of the respective variable. 
2. It is summarized by subject ID and activity label.
3. All the above apllies equally to this data set.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
