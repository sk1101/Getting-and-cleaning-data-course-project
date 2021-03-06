The new(more appropriate) variables:

The variables have been changed by using the following commands:

These commands change the variable name as such:
n<-sub('[0-9]+ ','',n) :
"1 tBodyAcc-mean()-X"  ---->  "tBodyAcc-mean()-X"
"2 tBodyAcc-mean()-Y"  ---->  "tBodyAcc-mean()-Y"
"3 tBodyAcc-mean()-Z"  ---->  "tBodyAcc-mean()-Z"

n<-sub('^t','(Time domain)',n) :
"tBodyAcc-mean()-X"  ---->  "(Time Domain)BodyAcc-mean()-X"
"tBodyAcc-mean()-Y"  ---->  "(Time Domain)BodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"  ---->  "(Time Domain)BodyAcc-mean()-Z"

n<-sub('^f','(Frequency domain)',n) :
"fBodyAcc-mean()-X"  ---->  "(Frequency domain)BodyAcc-mean()-X"
"fBodyAcc-mean()-Y"  ---->  "(Frequency domain)BodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"  ---->  "(Frequency domain)BodyAcc-mean()-Z"

n<-sub('std','standard deviation',n) :
"(Time Domain)BodyAcc-std()-X" ----> "(Time Domain)BodyAcc-standard deviation()-X"
"(Time Domain)BodyAcc-std()-Y" ----> "(Time Domain)BodyAcc-standard deviation()-Y"
"(Time Domain)BodyAcc-std()-Z" ----> "(Time Domain)BodyAcc-standard deviation()-Z"

The final data set consists of the average of all the variables for each subject and each activity.
The units and other features regarding the variable names can be found below:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
