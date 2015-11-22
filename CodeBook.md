run_analysis.R Code Book


"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and 
tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then 
they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20
Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz." 

SmartPhones Data, Features_Info.txt


Smartphones text files:
features.txt 
activity_labels.txt 
X_test.txt
y_test.txt
X_train.txt
y_train.txt

Read Smartphone next files into R tables
features
activities
x_test
y_test
x_train
y_train


Table descriptions and transformations:
features - table used as column headers for the test and train data.  Transformation - text to lower case, removal 

of hypens, commas, and parentheses
activities - this table provides the primary key and its applicable activity for decoding y_test and y_train.  

Renamed columns to be: id and activity
y_test - this table lists the applicable test activity.  Transformation:  renamed column name to: id
y_train - athis table lists the applicable test activity.  Transformation:  renamed column name to: id
x_test - added column names from the features table, added column activity using data from y_test
x_train - added column names from the features table, added column activity using data from y_train

Merge datasets: x_test and x_train into R table traintestdata.  traintestdata contains all columns and rows contain 
in both datasets.

The final dataset, R table: finaldata,  contains all columns which have mean, std, or activitiy in the column name.  

The final dataset column names are:

1                      tbodyaccmeanx
2                      tbodyaccmeany
3                      tbodyaccmeanz
4                       tbodyaccstdx
5                       tbodyaccstdy
6                       tbodyaccstdz
7                   tgravityaccmeanx
8                   tgravityaccmeany
9                   tgravityaccmeanz
10                   tgravityaccstdx
11                   tgravityaccstdy
12                   tgravityaccstdz
13                 tbodyaccjerkmeanx
14                 tbodyaccjerkmeany
15                 tbodyaccjerkmeanz
16                  tbodyaccjerkstdx
17                  tbodyaccjerkstdy
18                  tbodyaccjerkstdz
19                    tbodygyromeanx
20                    tbodygyromeany
21                    tbodygyromeanz
22                     tbodygyrostdx
23                     tbodygyrostdy
24                     tbodygyrostdz
25                tbodygyrojerkmeanx
26                tbodygyrojerkmeany
27                tbodygyrojerkmeanz
28                 tbodygyrojerkstdx
29                 tbodygyrojerkstdy
30                 tbodygyrojerkstdz
31                   tbodyaccmagmean
32                    tbodyaccmagstd
33                tgravityaccmagmean
34                 tgravityaccmagstd
35               tbodyaccjerkmagmean
36                tbodyaccjerkmagstd
37                  tbodygyromagmean
38                   tbodygyromagstd
39              tbodygyrojerkmagmean
40               tbodygyrojerkmagstd
41                     fbodyaccmeanx
42                     fbodyaccmeany
43                     fbodyaccmeanz
44                      fbodyaccstdx
45                      fbodyaccstdy
46                      fbodyaccstdz
47                 fbodyaccmeanfreqx
48                 fbodyaccmeanfreqy
49                 fbodyaccmeanfreqz
50                 fbodyaccjerkmeanx
51                 fbodyaccjerkmeany
52                 fbodyaccjerkmeanz
53                  fbodyaccjerkstdx
54                  fbodyaccjerkstdy
55                  fbodyaccjerkstdz
56             fbodyaccjerkmeanfreqx
57             fbodyaccjerkmeanfreqy
58             fbodyaccjerkmeanfreqz
59                    fbodygyromeanx
60                    fbodygyromeany
61                    fbodygyromeanz
62                     fbodygyrostdx
63                     fbodygyrostdy
64                     fbodygyrostdz
65                fbodygyromeanfreqx
66                fbodygyromeanfreqy
67                fbodygyromeanfreqz
68                   fbodyaccmagmean
69                    fbodyaccmagstd
70               fbodyaccmagmeanfreq
71           fbodybodyaccjerkmagmean
72            fbodybodyaccjerkmagstd
73       fbodybodyaccjerkmagmeanfreq
74              fbodybodygyromagmean
75               fbodybodygyromagstd
76          fbodybodygyromagmeanfreq
77          fbodybodygyrojerkmagmean
78           fbodybodygyrojerkmagstd
79      fbodybodygyrojerkmagmeanfreq
80          angletbodyaccmeangravity
81  angletbodyaccjerkmeangravitymean
82     angletbodygyromeangravitymean
83 angletbodygyrojerkmeangravitymean
84                 anglexgravitymean
85                 angleygravitymean
86                 anglezgravitymean
87                          activity

The finaldata table is used to determine the mean (average) by activity for each of the above variables and is 
written to a text file named: activityavg.txt  Use read.table to view the output in a readable format.

Dependancies: 
1. Download and unzipping of Smartphones Data into a working directory 
2. Setting the working directory to the Smartphones Data directory 
3. Saving the run_analysis.R script to the working directory 
4. Executing run_analysis.R 
5. Located activityavg.R in the working directory 
6. Use read.table to review output
