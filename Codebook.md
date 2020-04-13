---
title: "Getting and Cleaning Data Course Project Codebook"
author: "Daniel Arboleda"
date: "12/4/2020"
output: html_document
---

# **Dataset Information**

#This dataset collects information from accelerometers smartphones. Specifically, this experiment had been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

#This dataset has been provided by the course instructor by a link in the course website and a full description of the dataset is available at the site where the data was obtained in the first place.

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>


# **Variable names**

#The dataset contains 68 variables and 180 observations and it contains the average of each variable in the original DS grouped by activity and subject. The variable names are the following:

# - activity_lab: Type of activity  
# - subject: ID of the subject in the experiment  
# - mean and standard deviation of the all the features considered in the experiment:  
#   - tBodyAcc-XYZ
    - tGravityAcc-XYZ
    - tBodyAccJerk-XYZ
    - tBodyGyro-XYZ
    - tBodyGyroJerk-XYZ
    - tBodyAccMag
    - tGravityAccMag
    - tBodyAccJerkMag
    - tBodyGyroMag
    - tBodyGyroJerkMag
    - fBodyAcc-XYZ
    - fBodyAccJerk-XYZ
    - fBodyGyro-XYZ
    - fBodyAccMag
    - fBodyAccJerkMag
    - fBodyGyroMag
    - fBodyGyroJerkMag

# **Transformations performed**
From the original dataset, there are two main changes:

# - The activity labels were included as a factor variable so that the observations are aligned to the subjects. The activity types are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

# - As told before, this dataset was built from the original and contains only the average values grouped by activity and subject.
