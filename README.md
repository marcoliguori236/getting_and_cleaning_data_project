# Getting and cleaning data 

This repository is for the John Hopkins Coursera - Getting and Cleaning Data with R course. The projects is intended to be a real-world case of getting an untidy dataset and 
cleaning it by the consensus tidy data metrics (e.g **http://vita.had.co.nz/papers/tidy-data.pdf**).

## Assingment instructions:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How everything works

There are 3 files (other than the README.md) in this repository: an R script (**run_analysis.R**), a Codebook (**codebook.md**) and a tidy data set (**tidy_data.txt**)

**Assuming you run this project on R Studio**

* The R script should :
1. create an new folder called 'data' in your current directory if it doesn't already exist, 
2. download the data set presented on the instructions, 
3. create a folder within 'data' folder callled 'UCI HAR Dataset' where the unzipped file will be stored.
4. load the following .txt files and create a separate dataframe for each file: **X_train.txt**, **y _train.txt**, **X_test.txt**, **y_test.txt**, **subject_train.txt**,
**subject_test.txt**, **features.txt** and **activity_labels.txt**.  
5. Merge all dataframes to create a unique dataframe.
6. Select only the measures (or columns) that indicate a mean or standard deviation measure of the respective variable or feature.
7. Rename columns for better interpretability and adjust better to the tidy data norms.
8. Finally, create a new dataframe out of the already tidy and merged dataframe that presents the average of each variable for grouped by subject then activity.

