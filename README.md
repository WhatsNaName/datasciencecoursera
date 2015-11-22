This is the project assignment for the Getting and Cleaning Data online course by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD.

The assignment is to create tidy data from Human Activity Recognition Using Smartphones Dataset, Version 1.0 by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, 

Luca Oneto.  For additional information see:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Please download and unzip the dataset from the following URL:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

To perform the analysis, the working directory in R must be set to the parent directory which contains the test and train folders of the Smartphones Dataset.  Its 

imperative that the working directory is set to the correct location.  A reminder message is displayed reminding the user to set the proper directory.  

The analysis is performed in one script names: run_analysis.R.  The required libraries are sqldf and plyr.  The script will load the applicable library as needed. All 

columns with mean, std (standard deviation) or activity in the column name is extracted.  An output file, activityavg.txt, is created which contains the mean of all 

activities based on the variable name.

A message is displayed once the processing is complete.

Dependancies:
1. Download and unzipping of Smartphones Data into a working directory
2. Setting the working directory to the Smartphones Data directory
3. Saving the run_analysis.R script to the working directory
4. Executing run_analysis.R
5. Located activityavg.R in the working directory
6. Use read.table to review output
