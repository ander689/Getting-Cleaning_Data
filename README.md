This is a script to clean and tidy the data for Coursera's Getting and Cleaning Data project in R. 

To run the script, make sure your data are already unzipped, and you are in the right directory in R. Also make sure you have the package "data.table" installed in R. 


Original dataset source https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files code\_book.md - a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data

run\_analysis.R - it performs the following steps to process the data

1. Read all relevant data, excluding raw data.

2. Find only the features that have the mean or standard deviation.

3. Set up training and testing datasets, ensuring proper format and naming convention, and combine them together.

4. Assign the character corresponding to the 'activity' number in that column appropriately to make reading easier.

clean.txt - the final text output as described in project requirement.
