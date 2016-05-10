library(plyr)

# 0. Downloading and preparing the files

# Download and unzip the file:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, "finaldata.zip", method="curl")

if(!file.exists("./UCI HAR Dataset")) {
    unzip("finaldata.zip")
}

# Registering the download date:
dateDownloaded <- now()

# Reading Features Files:
xTrain    <- read.table("./UCI HAR Dataset/train/X_train.txt")
xTest     <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Reading Activity Files
yTrain    <- read.table("./UCI HAR Dataset/train/Y_train.txt")
yTest     <- read.table("./UCI HAR Dataset/test/Y_test.txt")

# Reading Subject Files
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subjectTest  <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Reading Labels and features
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
featuresNames  <- read.table("./UCI HAR Dataset/features.txt")


# 1. Merge the training and test sets to create one data set


# Merging the Feature Data
xFeaturesData <- rbind(xTrain, xTest)

# Merging the Activity Data
yActivityData <- rbind(yTrain, yTest)

# Merging Subject data
subjectData <- rbind(subjectTrain, subjectTest)

# set names to variables
names(subjectData)   <- "subject"
names(yActivityData) <- "activity"
names(xFeaturesData) <- featuresNames$V2

# Merding all datas in one
allData <- cbind(xFeaturesData, yActivityData, subjectData)


# 2. Extract only the measurements on the mean and standard deviation for each measurement


# get only columns with mean() or std() in their names
mean_and_std_features <- featuresNames$V2[grep("mean\\(\\)|std\\(\\)", featuresNames$V2)]

# subset the desired columns
selectedColumns <- c(as.character(mean_and_std_features), "subject", "activity" )
allData <- subset(allData, select=selectedColumns)


# 3. Use descriptive activity names to name the activities in the data set


# update values with correct activity names
allData$activity <- activityLabels[allData$activity, 2]


# 4. Appropriately label the data set with descriptive variable names


names(allData) <-gsub("^t", "time", names(allData))
names(allData) <-gsub("^f", "frequency", names(allData))
names(allData) <-gsub("Acc", "Accelerometer", names(allData))
names(allData) <-gsub("Gyro", "Gyroscope", names(allData))
names(allData) <-gsub("Mag", "Magnitude", names(allData))
names(allData) <-gsub("BodyBody", "Body", names(allData))


# 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.


finalData <- ddply(allData, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(finalData, "tidy.txt", row.name=FALSE)
