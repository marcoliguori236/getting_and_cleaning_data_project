# Codebook
Specifications and relevant information about the variables and measures output by the run_analysis.R script.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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
