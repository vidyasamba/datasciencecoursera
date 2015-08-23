run_analysis <- function()
{
  
## Read all the files into required Data Frames.
## training data is read into training_X, training_Y, training_sub data frames
## test data is read into test_X, test_Y, test_sub data frames

print("Reading Files.. Please Wait...")
training_X <- read.table('UCI HAR Dataset/train/X_train.txt', header=F, sep=' ', fill=T)
training_Y <- read.table('UCI HAR Dataset/train/y_train.txt', header=F, sep=' ', fill=T)
training_sub <- read.table('UCI HAR Dataset/train/subject_train.txt', header=F, sep=' ', fill=T)


test_X <- read.table('UCI HAR Dataset/test/X_test.txt', header=F, sep=' ', fill=T)
test_Y <- read.table('UCI HAR Dataset/test/y_test.txt', header=F, sep=' ', fill=T)
test_sub <- read.table('UCI HAR Dataset/test/subject_test.txt', header=F, sep=' ', fill=T)

## Read the features vector from the features text file into feature DF
## REad the activity labels into actvty DF
feature <- read.table('UCI HAR Dataset/features.txt', header=F, sep=' ', fill=T)
actvty<- read.table('UCI HAR Dataset/activity_labels.txt', header=F, sep=' ', fill=T)

print("Begin Cleanup")


## This is Step 1 of the exercise
## Merge the Y sets (activities) of test and training
## Merge the X sets (measurements vector) of test and training only for the available rows of Activity and Subject
## Merge the subject sets (Subject values) of test and training

Yset <- rbind(training_Y,test_Y)
sub_set <- rbind(training_sub,test_sub)
Xset <- rbind(training_X[1:7352,1:662],test_X[1:2947,1:662])


## MergeSet contains the merged data set - Result for Step 1
MergeSet <- cbind(sub_set,Yset,Xset)
print("Step 1 Complete")

## Step 2 begins here
## From the features list vector,search for mean and std in the measurement names
## Find the indices in the feature list for these measurements
## Merge with feature vector to get only those measurement names
## Select in the X set Dataframe (feature measurements) only those columns that 
## correspond to 'mean'and 'std' measurement names.
## Step 2 result will be obtained at the end of this
## tx dataframe contains only mean & std measurements

meanlist <- grep("*mean*",feature[,2])
stdlist <- grep("*std*",feature[,2])
al <- list(IND=c(meanlist,stdlist))
a2 <- merge(al,feature,by.x="IND",by.y="V1",all=FALSE)
tx <- select(Xset,a2$IND)
print("Step 2 Complete")
## tx contains Step 2 result but it is NOT merged with activity and subject 


## Step 3 & Step 4
## Assign measurement names to the X Set vector.These were obtained from the features vector during Step 2
## Merge with activity names so that the merged table contains Descriptive activity names
## res contains the resultant data frame for Step 3 and Step 4.

names(tx) <- a2$V2
sub_set <- rename(sub_set,Subject = V1)
Yset <- rename(Yset,Activity_Id = V1)
t_all <- cbind(sub_set,Yset,tx[1:10299,])
res <- merge(t_all,actvty,by.x="Activity_Id",by.y="V1",all=TRUE)
res <- rename(res, Activity_Desc = V2)
print("Step 3 & 4 Complete")

## Step 5 , Creation of Tidy Data Set
## Mel the data with IDs as Subject, Activity Id, Activity Desc
## Melt the data with variables as given by the reduced feature vector indices arrived earlier
## Cast the data back grouped by Subject & Activity and calculate the mean for all variables

t_melt <- melt(res,id=c("Subject","Activity_Id","Activity_Desc"),measure.vars=a2$V2)
t_Avg <- dcast(t_melt,Subject+Activity_Id+Activity_Desc ~ variable,function(x) mean(x,na.rm=TRUE))

## t_Avg contains Step 5, tidy data
## Write into a file with separator as comma.

write.table(t_Avg, file = "TidyData.txt",sep=",",row.names=FALSE,col.names=TRUE)
print("File written and Step 5 - Complete")

}