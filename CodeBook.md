#  Code Book

  There are a total of 68 columns in the data set (tidy_data.txt) labelled as follows:
   
  11. "SubjectId" 		: Subject ID, from [1-30]
  22. "ActivityName"	: Activity performed by the subject during data collection. One of six: 
						{WALKING, WALKING_UPSTAIRS ,WALKING_DOWNSTAIRS, SITTING , STANDING, LAYING}

   The next 33 denote the mean of the mean of different measurements, computed using sensors, for each subject
   performing each activity. Time domain measurements include "Body Acceleration along X/Y/Z axis",
   "Gravity Acceleration along X/Y/Z axes", "Body Acceleration Jerk along X/Y/Z axes", "Body Gyroscope Angular 
   Velocity" along X/Y/Z axes, "Body Gyroscope Angular Velocity Jerk" along X/Y/Z axes , "Body Acceleration Magnitude", 
   "Gravity Acceleration Magnitude", "Body Acceleration Jerk Magnitude", "Body Gyroscope Angular Velocity Magnitude",  
   "Body Gyroscope Angular Velocity Jerk Magnitude".
   
   Frequency domain measurements include: "Body Acceleration along X/Y/Z axis", 
   "Body Acceleration Jerk along X/Y/Z axes", "Body Gyroscope Angular Velocity" along X/Y/Z axes, 
   "Body Acceleration Magnitude", "Body Acceleration Jerk Magnitude","Body Gyroscope Angular Velocity Magnitude",  
   "Body Gyroscope Angular Velocity Jerk Magnitude"
   
   The names of the variables describe the above quantities.
   
 
    3.  "MeanOfTimeDomainBodyAccelerationAlongXAxis",
    4.  "MeanOfTimeDomainBodyAccelerationAlongYAxis",
    5.  "MeanOfTimeDomainBodyAccelerationAlongZAxis",
    6.  "MeanOfTimeDomainGravityAccelerationAlongXAxis",
    7.  "MeanOfTimeDomainGravityAccelerationAlongYAxis",
    8.  "MeanOfTimeDomainGravityAccelerationAlongZAxis",
    9,  "MeanOfTimeDomainBodyAccelerationJerkAlongXAxis",
    10.  "MeanOfTimeDomainBodyAccelerationJerkAlongYAxis",
    11.  "MeanOfTimeDomainBodyAccelerationJerkAlongZAxis",
    12.  "MeanOfTimeDomainBodyGyroAngularVelocityAlongXAxis",
    13.  "MeanOfTimeDomainBodyGyroAngularVelocityAlongYAxis",
    14.  "MeanOfTimeDomainBodyGyroAngularVelocityAlongZAxis",
    15.  "MeanOfTimeDomainBodyGyroAngularVelocityJerkAlongXAxis",
    16.  "MeanOfTimeDomainBodyGyroAngularVelocityJerkAlongYAxis",
    17.  "MeanOfTimeDomainBodyGyroAngularVelocityJerkAlongZAxis",
    18.  "MeanOfTimeDomainBodyAccelerationMagnitude",
    19.  "MeanOfTimeDomainGravityAccelerationMagnitude",
    20.  "MeanOfTimeDomainBodyAccelerationJerkMagnitude",
    21.  "MeanOfTimeDomainBodyGyroAngularVelocityMagnitude",
    22.  "MeanOfTimeDomainBodyGyroAngularVelocityJerkMagnitude",
    23.  "MeanOfFrequencyDomainBodyAccelerationAlongXAxis",
    24.  "MeanOfFrequencyDomainBodyAccelerationAlongYAxis",
    25.  "MeanOfFrequencyDomainBodyAccelerationAlongZAxis",
    26.  "MeanOfFrequencyDomainBodyAccelerationJerkAlongXAxis",
    27.  "MeanOfFrequencyDomainBodyAccelerationJerkAlongYAxis",
    28.  "MeanOfFrequencyDomainBodyAccelerationJerkAlongZAxis",
    29.  "MeanOfFrequencyDomainBodyGyroAngularVelocityAlongXAxis",
    30.  "MeanOfFrequencyDomainBodyGyroAngularVelocityAlongYAxis",
    31.  "MeanOfFrequencyDomainBodyGyroAngularVelocityAlongZAxis",
    32.  "MeanOfFrequencyDomainBodyAccelerationMagnitude",
    33.  "MeanOfFrequencyDomainBodyAccelerationJerkMagnitude",
    34  "MeanOfFrequencyDomainBodyGyroAngularVelocityMagnitude",
    35.  "MeanOfFrequencyDomainBodyGyroAngularVelocityJerkMagnitude"
      
    The next 33 variables deonte the mean of the standard deviation of the same measurements described above, again 
	for each subject performing each activity.
    
    36. "StdDevOfTimeDomainBodyAccelerationAlongXAxis",
    37. "StdDevOfTimeDomainBodyAccelerationAlongYAxis",
    38. "StdDevOfTimeDomainBodyAccelerationAlongZAxis",
    39. "StdDevOfTimeDomainGravityAccelerationAlongXAxis",
    40. "StdDevOfTimeDomainGravityAccelerationAlongYAxis",
    41. "StdDevOfTimeDomainGravityAccelerationAlongZAxis",
    42. "StdDevOfTimeDomainBodyAccelerationJerkAlongXAxis",
    43. "StdDevOfTimeDomainBodyAccelerationJerkAlongYAxis",
    44. "StdDevOfTimeDomainBodyAccelerationJerkAlongZAxis",
    45. "StdDevOfTimeDomainBodyGyroAngularVelocityAlongXAxis",
    46. "StdDevOfTimeDomainBodyGyroAngularVelocityAlongYAxis",
    47. "StdDevOfTimeDomainBodyGyroAngularVelocityAlongZAxis",
    48. "StdDevOfTimeDomainBodyGyroAngularVelocityJerkAlongXAxis",
    49. "StdDevOfTimeDomainBodyGyroAngularVelocityJerkAlongYAxis",
    50. "StdDevOfTimeDomainBodyGyroAngularVelocityJerkAlongZAxis",
    51. "StdDevOfTimeDomainBodyAccelerationMagnitude",
    52. "StdDevOfTimeDomainGravityAccelerationMagnitude",
    53. "StdDevOfTimeDomainBodyAccelerationJerkMagnitude",
    54. "StdDevOfTimeDomainBodyGyroAngularVelocityMagnitude",
    55. "StdDevOfTimeDomainBodyGyroAngularVelocityJerkMagnitude",
    56. "StdDevOfFrequencyDomainBodyAccelerationAlongXAxis",
    57. "StdDevOfFrequencyDomainBodyAccelerationAlongYAxis",
    58. "StdDevOfFrequencyDomainBodyAccelerationAlongZAxis",      
    59. "StdDevOfFrequencyDomainBodyAccelerationJerkAlongXAxis",
    60. "StdDevOfFrequencyDomainBodyAccelerationJerkAlongYAxis",
    61. "StdDevOfFrequencyDomainBodyAccelerationJerkAlongZAxis",      
    62. "StdDevOfFrequencyDomainBodyGyroAngularVelocityAlongXAxis",
    63. "StdDevOfFrequencyDomainBodyGyroAngularVelocityAlongYAxis",
    64. "StdDevOfFrequencyDomainBodyGyroAngularVelocityAlongZAxis",
    65. "StdDevOfFrequencyDomainBodyAccelerationMagnitude",
    66. "StdDevOfFrequencyDomainBodyAccelerationJerkMagnitude",
    67. "StdDevOfFrequencyDomainBodyGyroAngularVelocityMagnitude",
    68. "StdDevOfFrequencyDomainBodyGyroAngularVelocityJerkMagnitude"
 
 Given that there are 30 subjects and 6 activities, there are a total of 180 rows. Any NA values in the original data 
 were net considered when creating the tidy data set.