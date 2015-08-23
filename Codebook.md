--------------------------------------------------------------------------------------------------

Codebook for Tidy Data Assignment

Data on Human Activity Recognition using Smartphone being tidied up
For Further details please refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Author: Vidya Sambasivam, 22 Aug 2015

--------------------------------------------------------------------------------------------------

Summary:

A set of data has been collected from 30 Subjects (People) during different activities that they perform using Samsung Galaxy Smart Phones. 

1. There are 30 subjects (people) who underwent the test.Their measurements have been randomly classified as Training set and Test set of data.
2. 6 activities like Walking, Laying, Standing etc have been considered for measurement.
3. 561 parameters have been measured  which include time and frequency domain variables.
4. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration has been measured.
5. Triaxial Angular velocity from the gyroscope has been measured.

----------------------------------------------------------------------------------------------------

Source Files used for Processing:

1. activity_labels.txt - List of all the activity Id and their names
2. features.txt - List of all feature names with corresponding Ids

3. X_train.txt - Training set of feature measurement data
4. Y_train.txt - Activities for the corresponding Training set feature data
5. subject_train.txt - Subject Ids for the corresponding Training set feature data

6. X_test.txt - Test set of feature measurement data
7. Y_test.txt - Activities for the corresponding Test set feature data
8. subject_test.txt - Subject Ids for the corresponding Test set feature data

9. total_acc_x_train.txt,total_acc_y_train.txt,total_acc_z_train.txt - Additional measurements not directly being used for Tidy Data output
10. body_acc_x_train.txt,body_acc_y_train.txt,body_acc_z_train.txt - Additional measurements not directly being used for Tidy Data output
11. body_gyro_x_train.txt,body_gyro_y_train.txt,body_gyro_z_train.txt - Additional measurements not directly being used for Tidy Data output

----------------------------------------------------------------------------------------------------
 
Tidy Data Dictionary

Overview: 
Tidy Data contains the average value of all mean and standard deviation parameters of the feature measurement vector. This is grouped by Subject ID and under that by the specific activity (Id and Description) such that each value denotes the average value of the measurement parameter for that combination.

1. Subject
Subject contains the Id of the volunteer on whom the test was done.
values range from 1 to 30.

2. Activity_Id
This contains the Ids of the activities performed. Ranges from 1 to 6.

3. Activity_Desc
Contains the Activity Description. The values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

4. tBodyAcc-mean()-X
Contains average value of the time domain of Body Acceleration Mean across X axis. Ranges between -1 to 1.

5. tBodyAcc-mean()-Y
Contains average value of the time domain of Body Acceleration Mean across Y axis. Ranges between -1 to 1.

6. tBodyAcc-mean()-Z
Contains average value of the time domain of Body Acceleration Mean across Z axis. Ranges between -1 to 1.

7. tBodyAcc-std()-X
Contains average value of the time domain of Body Acceleration Standard Deviation across X axis. Ranges between -1 to 1.

8. tBodyAcc-std()-Y
Contains average value of the time domain of Body Acceleration Standard Deviation across Y axis. Ranges between -1 to 1.

9. tBodyAcc-std()-Z
Contains average value of the time domain of Body Acceleration Standard Deviation across Z axis. Ranges between -1 to 1.

10. tGravityAcc-mean()-X
Contains average value of the time domain of Gravity-Mean across X axis. Ranges between -1 to 1.

11. tGravityAcc-mean()-Y
Contains average value of the time domain of Gravity-Mean across Y axis. Ranges between -1 to 1.

12. tGravityAcc-mean()-Z
Contains average value of the time domain of Gravity-Mean across Z axis. Ranges between -1 to 1.

13. tGravityAcc-std()-X
Contains average value of the time domain of Gravity-standard deviation across X axis. Ranges between -1 to 1.

14. tGravityAcc-std()-Y
Contains average value of the time domain of Gravity-standard deviation across Y axis. Ranges between -1 to 1.

15. tGravityAcc-std()-Z
Contains average value of the time domain of Gravity-standard deviation across Z axis. Ranges between -1 to 1.

16. tBodyAccJerk-mean()-X
Contains average value of the time dom. of Body Acceleration Mean for Jerk across X axis, ranges between -1 to 1

17. tBodyAccJerk-mean()-Y
Contains average value of the time dom. of Body Acceleration Mean for Jerk across Y axis, ranges between -1 to 1

18. tBodyAccJerk-mean()-Z
Contains average value of the time dom. of Body Acceleration Mean for Jerk across Z axis, ranges between -1 to 1

19. tBodyAccJerk-std()-X
Contains average value of the time dom. of Body Acceleration Standard Deviation for Jerk across X axis, ranges between -1 to 1

20. tBodyAccJerk-std()-Y
Contains average value of the time dom. of Body Acceleration Standard Deviation for Jerk across Y axis, ranges between -1 to 1

21. tBodyAccJerk-std()-Z
Contains average value of the time dom. of Body Acceleration Standard Deviation for Jerk across Z axis, ranges between -1 to 1

22. tBodyGyro-mean()-X
Contains average value of the time dom. of Body Acc. by Gyroscope-Mean across X axis, ranges between -1 to 1

23. tBodyGyro-mean()-Y
Contains average value of the time dom. of Body Acc. by Gyroscope-Mean across Y axis, ranges between -1 to 1

24. tBodyGyro-mean()-Z
Contains average value of the time dom. of Body Acc. by Gyroscope-Mean across Z axis, ranges between -1 to 1

25. tBodyGyro-std()-X
Contains average value of the time dom. of Body Acc. by Gyroscope-std (standard deviation) across X axis, ranges between -1 to 1

26. tBodyGyro-std()-Y
Contains average value of the time dom. of Body Acc. by Gyroscope-std (standard deviation) across Y axis, ranges between -1 to 1

27. tBodyGyro-std()-Z
Contains average value of the time dom. of Body Acc. by Gyroscope-Standard Deviation across Z axis, ranges between -1 to 1
                              
28. tBodyGyroJerk-mean()-X
Contains average value of the time dom. of Body Acc. by Gyroscope-Mean (for Jerk) across X axis, ranges between -1 to 1

29. tBodyGyroJerk-mean()-Y
Contains average value of the time dom. of Body Acc. by Gyroscope-Mean (for Jerk) across Y axis, ranges between -1 to 1

30. tBodyGyroJerk-mean()-Z
Contains average value of the time dom. of Body Acc. by Gyroscope-Mean (for Jerk) across Z axis, ranges between -1 to 1

31. tBodyGyroJerk-std()-X
Contains average value of the time dom. of Body Acc. by Gyroscope-standard deviation (for Jerk) across X axis, ranges between -1 to 1

32. tBodyGyroJerk-std()-Y
Contains average value of the time dom. of Body Acc. by Gyroscope-standard deviation (for Jerk) across Y axis, ranges between -1 to 1

33. tBodyGyroJerk-std()-Z
Contains average value of the time dom. of Body Acc. by Gyroscope-Standard Deviation (for Jerk) across Z axis, ranges between -1 to 1
                                         
34. tBodyAccMag-mean()
contains average value of the magnitude of Body Acc. Mean. ranges between -1 to 1

35. tBodyAccMag-std()
contains average value of the magnitude of Body Acc. standard deviation ranges between -1 to 1

36. tGravityAccMag-mean()    
contains average value of the magnitude of Gravity. Mean. ranges between -1 to 1

37. tGravityAccMag-std() 
contains average value of the magnitude of Gravity. Standard Deviation. ranges between -1 to 1

38. tBodyAccJerkMag-mean()
contains average value of the magnitude of Body Acc Jerk Mean. ranges between -1 to 1

39. tBodyAccJerkMag-std()  
contains average value of the magnitude of Body Acc Jerk Standard Deviation. ranges between -1 to 1

40. tBodyGyroMag-mean()
contains average value of the magnitude of Body Acc By gyroscope Mean. ranges between -1 to 1

41. tBodyGyroMag-std()
contains average value of the magnitude of Body Acc by gyroscope standard deviation. ranges between -1 to 1

42. tBodyGyroJerkMag-mean()
contains average value of the magnitude of Body Acc by gyro-Jerk Mean. ranges between -1 to 1

43. tBodyGyroJerkMag-std()
contains average value of the magnitude of Body Acc by gyro-Jerk standard deviation. ranges between -1 to 1

44. fBodyAcc-mean()-X
Contains average value of the frequency domain of Body Acceleration Mean across X axis. Ranges between -1 to 1.

45. fBodyAcc-mean()-Y
Contains average value of the frequency domain of Body Acceleration Mean across Y axis. Ranges between -1 to 1.

46. fBodyAcc-mean()-Z
Contains average value of the frequency domain of Body Acceleration Mean across Z axis. Ranges between -1 to 1.

47. fBodyAcc-std()-X
Contains average value of the frequency domain of Body Acceleration Standard Deviation across X axis. Ranges between -1 to 1.

48. fBodyAcc-std()-Y
Contains average value of the frequency domain of Body Acceleration Standard Deviation across Y axis. Ranges between -1 to 1.

49. fBodyAcc-std()-Z
Contains average value of the frequency domain of Body Acceleration Standard Deviation across Z axis. Ranges between -1 to 1.
    
50. fBodyAcc-meanFreq()-X
Contains average value of the frequency domain of Body Acceleration mean frequency across X axis, Ranges between -1 to 1.

51. fBodyAcc-meanFreq()-Y
Contains average value of the frequency domain of Body Acceleration mean frequency across Y axis, Ranges between -1 to 1.

52. fBodyAcc-meanFreq()-Z
Contains average value of the frequency domain of Body Acceleration mean frequency across Z axis, Ranges between -1 to 1.

53. fBodyAccJerk-mean()-X
Contains average value of the frequency dom. of Body Acceleration Mean for Jerk across X axis, ranges between -1 to 1

54. fBodyAccJerk-mean()-Y
Contains average value of the frequency dom. of Body Acceleration Mean for Jerk across Y axis, ranges between -1 to 1

55. fBodyAccJerk-mean()-Z
Contains average value of the frequency dom. of Body Acceleration Mean for Jerk across Z axis, ranges between -1 to 1

56. fBodyAccJerk-std()-X
Contains average value of the frequency dom. of Body Acceleration Standard Deviation for Jerk across X axis, ranges between -1 to 1

57. fBodyAccJerk-std()-Y
Contains average value of the frequency dom. of Body Acceleration Standard Deviation for Jerk across Y axis, ranges between -1 to 1

58. fBodyAccJerk-std()-Z
Contains average value of the frequency dom. of Body Acceleration Standard Deviation for Jerk across Z axis, ranges between -1 to 1

59.  fBodyAccJerk-meanFreq()-X
Contains average value of the frequency domain of Body Acceleration-Jerk mean frequency across X axis, Ranges between -1 to 1.

60. fBodyAccJerk-meanFreq()-Y
Contains average value of the frequency domain of Body Acceleration-Jerk mean frequency across Y axis, Ranges between -1 to 1.

61. fBodyAccJerk-meanFreq()-Z
Contains average value of the frequency domain of Body Acceleration-Jerk mean frequency across Z axis, Ranges between -1 to 1.

62. fBodyGyro-mean()-X
Contains average value of the frequency dom. of Body Acc. by Gyroscope-Mean across X axis, ranges between -1 to 1

63. fBodyGyro-mean()-Y
Contains average value of the frequency dom. of Body Acc. by Gyroscope-Mean across Y axis, ranges between -1 to 1

64. fBodyGyro-mean()-Z
Contains average value of the frequency dom. of Body Acc. by Gyroscope-Mean across Z axis, ranges between -1 to 1

65. fBodyGyro-std()-X
Contains average value of the frequency dom. of Body Acc. by Gyroscope-std (standard deviation) across X axis, ranges between -1 to 1

66. fBodyGyro-std()-Y
Contains average value of the frequency dom. of Body Acc. by Gyroscope-std (standard deviation) across Y axis, ranges between -1 to 1

67. fBodyGyro-std()-Z
Contains average value of the frequency dom. of Body Acc. by Gyroscope-Standard Deviation across Z axis, ranges between -1 to 1

68. fBodyGyro-meanFreq()-X
Contains average value of the frequency domain of Body Acc by Gyro mean frequency across X axis, Ranges between -1 to 1.

69. fBodyGyro-meanFreq()-Y
Contains average value of the frequency domain of Body Acc by Gyro mean frequency across Y axis, Ranges between -1 to 1.

70. fBodyGyro-meanFreq()-Z
Contains average value of the frequency domain of Body Acc by Gyro mean frequency across Z axis, Ranges between -1 to 1.

71. fBodyAccMag-mean()
contains average value of the freq. domain - magnitude of Body Acc. Mean. ranges between -1 to 1

72. fBodyAccMag-std()
contains average value of the freq. domain - magnitude of Body Acc. standard deviation ranges between -1 to 1

73. fBodyAccMag-meanFreq()    
contains average value of the magnitude of mean frequency. ranges between -1 to 1

74. fBodyBodyAccJerkMag-mean() 
contains average value of the magnitude of Body Acc Jerk Mean. ranges between -1 to 1

75. fBodyBodyAccJerkMag-std() 
contains average value of the magnitude of Body Acc Jerk std. ranges between -1 to 1

76. fBodyBodyAccJerkMag-meanFreq()
contains average value of the magnitude of Body Acc Jerk Mean Frequency. ranges between -1 to 1

77. fBodyBodyGyroMag-mean() 
contains average value of the magnitude of Body Acc By Gyro Mean. ranges between -1 to 1

78. fBodyBodyGyroMag-std() 
contains average value of the magnitude of Body Acc By Gyro std. ranges between -1 to 1

79. fBodyBodyGyroMag-meanFreq()
contains average value of the magnitude of Body Acc By Gyro Mean Frequency. ranges between -1 to 1

80. fBodyBodyGyroJerkMag-mean() 
contains average value of the magnitude of Body Jerk By Gyro Mean. ranges between -1 to 1

81. fBodyBodyGyroJerkMag-std() 
contains average value of the magnitude of Body Jerk By Gyro std. ranges between -1 to 1

82. fBodyBodyGyroJerkMag-meanFreq()
contains average value of the magnitude of Body Jerk By Gyro Mean Frequency. ranges between -1 to 1          
                     ""         

---------------------------------------------------------------------------------------------------- 

End of Codebook

----------------------------------------------------------------------------------------------------

 