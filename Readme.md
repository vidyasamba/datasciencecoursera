------------------------------------------------------------------------------------------

Readme for datasciencecoursera

Being used for Tidy Data Assignment(Course Project) of the course Getting and Cleansing Data

Author: Vidya Sambasivam

----------------------------------------------------------------------------------------------


There are two files created for the assignment.
a. run_analysis.R (Code file for creating tidy data)
b. Codebook.md (Data dictionary and overview of the data created )


run_analysis.R is a R script file which has a function to create Tidy Data from 

the given data set. It contains only one function run_analysis that runs to create the TidyData.txt file

Logic is as follows

1. run_analysis() function can be run from the working directory.
2. The folder UCI HAR Dataset is expected to be in the same working directory.
3. The function has explanation of all the invidual steps.
4. First all the source files (as explained in Codebook.md) are read into data frames
5. Step 1 is done by merging all the training and test data sets
6. Step 2 is done by extracting the required indices (mean and std) from the feature vector and then using it to extract the required columns from the merged data set
7. Step 3 is done by merging the activity dataframe with the Step 2 data set joining by the activity Id.
8. Step 4 is done by naming the vector variables with the feature variable names (extracted from feature vector)
9. Step 5 is done by first melting the data frame into Ids and variables and then casting/grouping them by the ids to get average value.
10. TidyData.txt is created by writing the resultant data frame with comma separator.
11. As reading files take time, a print message is given to indicate the reading of files.
12. The sequence of Steps are tracked through print messages till writing the file.
13. File is written to the working directory.

----------------------------------------------------------------------------------------------






