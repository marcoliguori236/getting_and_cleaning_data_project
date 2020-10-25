library(dplyr)

##Check if data folder exists in current directory and create it if it does not exist
if(!file.exists("./data")){dir.create("./data")}

##Name the location within 'data' folder for the zip file
filename <- "data/dataset.zip"

##Same logic as the first step
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}

##Same logic as the first step
if (!file.exists("./data/UCI HAR Dataset")) { 
  unzip(filename, exdir="./data") 
}

file_path <- file.path("./data/UCI HAR Dataset")


##Read into dataframes all relevant files and see with the help of RStudio environment
##how the datasets are shaped so we can understand how to merge them
df_x_train <- read.table(file.path(file_path, "train", "X_train.txt"), header = FALSE)
df_y_train <- read.table(file.path(file_path, "train", "y_train.txt"), header = FALSE)
df_subject_train <- read.table(file.path(file_path, "train", "subject_train.txt"), header = FALSE)


df_x_test <- read.table(file.path(file_path, "test", "X_test.txt"), header = FALSE)
df_y_test <- read.table(file.path(file_path, "test", "y_test.txt"), header = FALSE)
df_subject_test <- read.table(file.path(file_path, "test", "subject_test.txt"), header = FALSE)

#merge by row the train and test subject data points
df_subjects <- rbind(df_subject_train, df_subject_test)
#rename the variable
names(df_subjects) <- "subjects"

#merge by row the train and test label data points
df_labels <- rbind(df_y_train, df_y_test)
#rename the variable
names(df_labels) <- "labels"

#merge by row the train and test feature sets
df_features <- rbind(df_x_train, df_x_test)

#read the feature names file into a dataframe
feature_names <- read.table(file.path(file_path, "features.txt"))

#make the names of the variables their actual names
names(df_features) <- feature_names$V2

##use bind_cols from dplyr to merge all datasets into one
df_full <- bind_cols(df_features, df_subjects, df_labels)

#names of the variables that measure mean and std 
mean_std_names <- grep(".*mean.*|.*std.*", names(df_full))

#use dplyr select fun to extract the measures we need
df_full <- df_full %>% select(mean_std_names, subjects, labels)

#import label information from .txt file
activity_labels <- read.table(file.path(file_path, "activity_labels.txt"), header = FALSE)

#refactor subjects and labels variables based on activity labels
df_full$labels <- factor(df_full$labels, labels = activity_labels$V2)

#1. Change to lower case and add hyphen to labels for better usage of the dataset
#2. Change prefix 't' to 'time'
#3. Change prefix 'f' to 'frequency'
#4. Change 'Mag' to 'Magnitude'
#5. Change 'Acc' to 'Accelerometer'
#6. Change 'Gyro' to 'Gyroscope'

df_full <- df_full %>% mutate(labels = gsub("_","-",tolower(as.character(labels)))) 

names(df_full) <- gsub("^t", "time",names(df_full)) 
names(df_full) <- gsub("^f", "frequency",names(df_full))
names(df_full) <- gsub("Mag", "Magnitude",names(df_full))
names(df_full) <- gsub("Acc", "Accelerometer",names(df_full))
names(df_full) <- gsub("Gyro", "Gyroscope",names(df_full))

#final step: create second tidy data set that includes the means of all variables for each subject and activity
df_full_mean <- df_full %>% group_by(subjects, labels) %>% summarise_all(mean)
write.table(df_full_mean, file="tidy_data.txt", row.names = FALSE)
