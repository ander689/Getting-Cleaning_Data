This is a script to clean and tidy the data for Coursera's Getting and Cleaning Data project in R. 

To run the script, make sure your data are already unzipped, and you are in the right directory in R. Also make sure you have the package "data.table" installed in R. 


original dataset source https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files code_book.md - a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data

run_analysis.R - it performs the following steps to process the data

ead all datasets into data frames and assign columns proper names
elect only mean and standard deviation measurements
ve all data frames indexes so we can merge them together

ndex after merge
ve activity descriptive names
reate the separate tidy table with the average of each variable for each activity and each subject.

clean.txt - the final text output as described in project requirement.
