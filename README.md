---
title: "README file for the Getting and cleaning data Course Project"
author: "Daniel Arboleda"
date: "12/4/2020"
output: html_document
---

# **How script works**

# 1. The script downloads the compressed file and unzips it. Then chooses each one of the files containing the datasets.  
# 2. The first instruction asks to create a dataset merging the testing and training DS. So it is necessary to format the DS. the documents *X_train.txt* and *X_tes.txtt* are the base datasets. *y_train.txt / y_test.txt* and *subject_train.txt / subject_test.txt* are the activity labels and subjects added to the base DS. In this part the fourth instruction is also developed.  
# 3. The second instruction extracts only the measurements on the mean and standard deviation for each measurement.  
# 4. The third instruction uses descriptive activity names to name the activities in the dataset.  
# 5. Finally, the fifth instruction creates the tidy dataset with the average of each variable for each activity and each subject.  