#Assumes that the working directory is set to the unzipped folder name: UCI HAR Dataset
message("Please set your working directory to parent folder that contains the test and train folders")

#loads required libraries
library(sqldf)
library(plyr)

#reads the features into a table which will be used as the column headers
features <- read.table ("features.txt")

#saves the column headers as lowercase into the names variable 
names <- tolower(features[, 2])

# Next 5 cleans the names, removing -, (), (, ), and ,
names <-gsub("-", "", names)
names <- sub("\\()", "", names)
names <- gsub("\\(", "", names)
names <- gsub("\\)", "", names)
names <- gsub(",", "", names)

#reads the activity label text file into the activities variable in R
activities<- read.table("activity_labels.txt")

#assigns column names to the activities table
colnames(activities)[2] <- "activity"
colnames(activities)[1] <- "id"


#reads the test activity values into a table
x_test <- read.table("test/X_test.txt")

#reads the activities associated with the test data into a table
y_test <- read.table("test/y_test.txt")

#assigns column names to the test values
colnames(x_test) = names

#assigns column name to activity label, will be used to determine the activity name
colnames(y_test)[1] <- "id"

#determines the activity name for the applicable activity for the test data
decodetest <- sqldf("select y_test.id, activity from y_test, activities where y_test.id = activities.id")

#renames the column to activity for use later in the rbind of the test and train data
activity <- decodetest$activity

#appends the activity column to the test data
testdata <- cbind(x_test, activity)

### training data

#reads the train activity values into a table
x_train <- read.table("train/X_train.txt")

#reads the activities associated with the train data into a table
y_train <- read.table("train/y_train.txt")

#assigns column names to the train values
colnames(x_train) = names

#assigns column name to activity label, will be used to determine the activity name
colnames(y_train)[1] <- "id"

#determines the activity name for the applicable activity for the test data
decodetrain <- sqldf("select y_train.id, activity from y_train, activities where y_train.id = activities.id")

#renames the column to activity for use later in the rbind of the test and train data
activity <- decodetrain$activity

#appends the activity column to the test data
traindata <- cbind(x_train, activity)

####

#merge test and train data using rbind
traintestdata <- rbind(testdata, traindata)

# dataset includes the activity, mean, and std columns
finaldata <- traintestdata[,grep("mean|std|activity", colnames(traintestdata), value = FALSE)]

#determines the average (mean) by variable and activity
activityavg <- ddply(finaldata, .(activity), numcolwise(mean))

#writes output to a text file with row.name equal to FALSE
write.table(activityavg, "activityavg.txt",  col.names = TRUE, row.name=FALSE)

message("processing complete")

