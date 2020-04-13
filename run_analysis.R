##Getting and cleaning data course project
##Daniel Arboleda

#Downloading file and extracting information
FURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(FURL, destfile = "./accdata.zip", method = "curl")
unzip("accdata.zip")

#Reading features and activity labels
feat <- read.table("./UCI HAR Dataset/features.txt")
act <- read.table("./UCI HAR Dataset/activity_labels.txt")

##Instruction 1
#Arranging test data
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(test) <-feat$V2
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
test$activity <- ytest$V1
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test$subject <- factor(subject_test$V1)

#Arranging train data
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(train) <-feat$V2
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
train$activity <- ytrain$V1
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train$subject <- factor(subject_train$V1)

#Merging data sets
accDS <- rbind(test, train)


##Instruction 2
#Extracting mean and std measurements keeping act and subject
selcols <- grep("mean\\(\\)|std\\(\\)|activity|subject", colnames(accDS), value = TRUE)
accDS2 <- accDS[, selcols]

##Instruction 3
accDS2$activity_lab <- factor(accDS$activity, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

##Instruction 4
#This was properly done before while accomplishing instruction 1 at line 16 & 24

##Instruction 5
#Creation of the dataset
featcols <- grep("mean\\(\\)|std\\(\\)", colnames(accDS), value = TRUE)
dsmelt <- data.table::melt(accDS2, id = c("activity_lab", "subject"), measure.vars = featcols)
accDStidy <- data.table::dcast(dsmelt, activity_lab + subject ~ variable, mean)

#File creation
write.table(accDStidy, file = "tidyDS.txt", row.names = FALSE)