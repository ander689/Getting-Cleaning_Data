#find working directory
getwd()
#load data.frame package for fread function
library(data.table)

#load activity labels and features:
activityLabels<-fread("./activity_labels.txt",col.names = c("labels", "activity"))
activityLabels$activity<-as.character(activityLabels$activity)
features<-fread("./features.txt",col.names = c("index", "featureName"))

#find the indexes of the features that only contain the mean or standard dev:
features2 <- grep("(mean|std)\\(\\)", features[, featureName])

#find the corresponding features to those indices:
measurements<-features[features2,featureName]
#get rid of all parenthesis in measurements variables:
measurements <- gsub('[()]', '', measurements)

#load train data
xTrain<-fread("./train/X_train.txt")[,features2, with=F]
yTrain<-fread("./train/y_train.txt",col.names = "activity")
subjectTrain<-fread("./train/subject_train.txt")
#set the measurement labels as the column names of the train data
setnames(xTrain,colnames(xTrain),measurements)
#combine train data to one dataframe
trainData<-cbind(subjectTrain,yTrain,xTrain)

#Now do the same for test data: load test data
xTest<-fread("./test/X_test.txt")[,features2, with=F]
yTest<-fread("./test/y_test.txt",col.names = "activity")
#add subject
subjectTest<-fread("./test/subject_test.txt")
#set the measurement labels as the column names of the test data
setnames(xTest,colnames(xTest),measurements)
#combine test data to one dataframe
testData<-cbind(subjectTest,yTest,xTest)

#Now combine train and test dataframes into one dataframe
finalData<-rbind(trainData,testData)
colnames(finalData) <- c("subject", "activity", measurements)
#Set the activity number to the name of the activity instead
finalData$activity <- factor(finalData$activity, levels = activityLabels$labels, labels = activityLabels$activity)
finalData$subject <- as.factor(finalData$subject)

finalDataMelt <- melt(finalData, id = c("subject", "activity"))
finalDataMean <- dcast(finalDataMelt, subject + activity ~ variable, mean)

write.table(finalDataMean, "clean.txt", row.names = FALSE)
