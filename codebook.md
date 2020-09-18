# Description of tidy data set - tidydata.txt
## A codebook for the "Getting and Cleaning Data" assignment

This dataset contains 180 rows and 68 variables.

The 180 rows cover observations for each of 6 activities, for each of 30 experimental participants. 

### The 68 variables include 

* Subject
* Activity
* 66 separate variables which represent the mean of one of the retained variables for each subject/activity combination

The retained variables are those from the original dataset which are either a mean or standard deviation of one of the raw data observations.

### Further detail about the variables:

**1. Subject**: integer representing the experimental participant, between 1 and 30 (*integer type*):

**2. Activity**: description of the specific activity from which observations were captured (*factor type*):

* 1: Walking
* 2: Walking Upstairs
* 3: Walking DOwnstairs
* 4: Sitting
* 5: Standing
* 6: Laying

#### Means of retained mean/standard deviation variables (*numeric type*):

**3. tBodyAcc-MeanX**

**4. tBodyAcc-MeanY**

**5. tBodyAcc-MeanZ**

**6. tGravityAcc-MeanX**

**7. tGravityAcc-MeanY**

**8. tGravityAcc-MeanZ**

**9. tBodyAccJerk-MeanX**

**10. tBodyAccJerk-MeanY**

**11. tBodyAccJerk-MeanZ**

**12. tBodyGyro-MeanX**

**13. tBodyGyro-MeanY**

**14. tBodyGyro-MeanZ**

**15. tBodyGyroJerk-MeanX**

**16. tBodyGyroJerk-MeanY**

**17. tBodyGyroJerk-MeanZ**

**18. tBodyAccMag-Mean**

**19. tGravityAccMag-Mean**

**20. tBodyAccJerkMag-Mean**

**21. tBodyGyroMag-Mean**

**22. tBodyGyroJerkMag-Mean**

**23. fBodyAcc-MeanX**

**24. fBodyAcc-MeanY**

**25. fBodyAcc-MeanZ**

**26. fBodyAccJerk-MeanX**

**27. fBodyAccJerk-MeanY**

**28. fBodyAccJerk-MeanZ**

**29. fBodyGyro-MeanX**

**30. fBodyGyro-MeanY**

**31. fBodyGyro-MeanZ**

**32. fBodyAccMag-Mean**

**33. fBodyBodyAccJerkMag-Mean**

**34. fBodyBodyGyroMag-Mean**

**35. fBodyBodyGyroJerkMag-Mean**

**36. tBodyAcc-StdX**

**37. tBodyAcc-StdY**

**38. tBodyAcc-StdZ**

**39. tGravityAcc-StdX**

**40. tGravityAcc-StdY**

**41. tGravityAcc-StdZ**

**42. tBodyAccJerk-StdX**

**43. tBodyAccJerk-StdY**

**44. tBodyAccJerk-StdZ**

**45. tBodyGyro-StdX**

**46. tBodyGyro-StdY**

**47. tBodyGyro-StdZ**

**48. tBodyGyroJerk-StdX**

**49. tBodyGyroJerk-StdY**

**50. tBodyGyroJerk-StdZ**

**51. tBodyAccMag-Std**

**52. tGravityAccMag-Std**

**53. tBodyAccJerkMag-Std**

**54. tBodyGyroMag-Std**

**55. tBodyGyroJerkMag-Std**

**56. fBodyAcc-StdX**

**57. fBodyAcc-StdY**

**58. fBodyAcc-StdZ**

**59. fBodyAccJerk-StdX**

**60. fBodyAccJerk-StdY**

**61. fBodyAccJerk-StdZ**

**62. fBodyGyro-StdX**

**63. fBodyGyro-StdY**

**64. fBodyGyro-StdZ**

**65. fBodyAccMag-Std**

**66. fBodyBodyAccJerkMag-Std**

**67. fBodyBodyGyroMag-Std**

**68. fBodyBodyGyroJerkMag-Std**

