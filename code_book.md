Code Book

This code book will describe the data used in the project included in Getting and Cleaning Data, as well as the processing required to create the resulting tidy data set.

Overview

The datasets used in this project comes from the experiments run on 30 volunteers wearing Samsung smartphones on their waist performing six different kinds of activities.

Data collection

The following data were collected:

1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.

2. Triaxial Angular velocity from the gyroscope.

3. A 561-feature vector with time and frequency domain variables.

4. Its activity label.

5. An identifier of the subject who carried out the experiment.

It is stored in the following datasets:

1. 'features\_info.txt': Shows information about the variables used on the feature vector.

2. 'features.txt': List of all features.

3. 'activity\_labels.txt': Links the class labels with their activity name.

4. 'train/X\_train.txt': Training set.

5. 'train/y\_train.txt': Training labels.

6. 'test/X\_test.txt': Test set.

7. 'test/y\_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

1. 'train/subject\_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

2. 'train/Inertial Signals/total\_acc\_x\_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total\_acc\_x\_train.txt' and 'total\_acc\_z\_train.txt' files for the Y and Z axis.

3. 'train/Inertial Signals/body\_acc\_x\_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

4. 'train/Inertial Signals/body\_gyro\_x\_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

Processing Steps

1. Read all relevant data, excluding raw data.

2. Find only the features that have the mean or standard deviation.

3. Set up training and testing datasets, ensuring proper format and naming convention, and combine them together.

4. Assign the character corresponding to the 'activity' number in that column appropriately to make reading easier.

5. Make each new row show each subject and their activity, along with the correct standard deviation and mean.

6. Write the table out to your directory.

Data Not Used

This analysis was performed using only the files above, and did not use the raw signal data. Therefore, the data files in the "Inertial Signals" folders were ignored.

