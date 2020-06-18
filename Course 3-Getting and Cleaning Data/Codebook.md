# CodeBook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

File **tidy_data.txt** contains 180 rows and 68 columns

Columns in the dataset includes:

* "activityname"             
* "subject"                 
* "tbodyaccmeanx"            
* "tbodyaccmeany"           
* "tbodyaccmeanz"            
* "tbodyaccstdx"            
* "tbodyaccstdy"             
* "tbodyaccstdz"            
* "tgravityaccmeanx"         
* "tgravityaccmeany"        
* "tgravityaccmeanz"         
* "tgravityaccstdx"         
* "tgravityaccstdy"          
* "tgravityaccstdz"         
* "tbodyaccjerkmeanx"        
* "tbodyaccjerkmeany"       
* "tbodyaccjerkmeanz"        
* "tbodyaccjerkstdx"        
* "tbodyaccjerkstdy"         
* "tbodyaccjerkstdz"        
* "tbodygyromeanx"           
* "tbodygyromeany"          
* "tbodygyromeanz"           
* "tbodygyrostdx"           
* "tbodygyrostdy"            
* "tbodygyrostdz"           
* "tbodygyrojerkmeanx"       
* "tbodygyrojerkmeany"      
* "tbodygyrojerkmeanz"       
* "tbodygyrojerkstdx"       
* "tbodygyrojerkstdy"        
* "tbodygyrojerkstdz"       
* "tbodyaccmagmean"          
* "tbodyaccmagstd"          
* "tgravityaccmagmean"       
* "tgravityaccmagstd"       
* "tbodyaccjerkmagmean"      
* "tbodyaccjerkmagstd"      
* "tbodygyromagmean"         
* "tbodygyromagstd"         
* "tbodygyrojerkmagmean"     
* "tbodygyrojerkmagstd"     
* "fbodyaccmeanx"            
* "fbodyaccmeany"           
* "fbodyaccmeanz"            
* "fbodyaccstdx"            
* "fbodyaccstdy"             
* "fbodyaccstdz"            
* "fbodyaccjerkmeanx"        
* "fbodyaccjerkmeany"       
* "fbodyaccjerkmeanz"        
* "fbodyaccjerkstdx"        
* "fbodyaccjerkstdy"         
* "fbodyaccjerkstdz"        
* "fbodygyromeanx"           
* "fbodygyromeany"          
* "fbodygyromeanz"           
* "fbodygyrostdx"           
* "fbodygyrostdy"            
* "fbodygyrostdz"           
* "fbodyaccmagmean"          
* "fbodyaccmagstd"          
* "fbodybodyaccjerkmagmean"  
* "fbodybodyaccjerkmagstd"  
* "fbodybodygyromagmean"     
* "fbodybodygyromagstd"     
* "fbodybodygyrojerkmagmean" 
* "fbodybodygyrojerkmagstd" 

## Activity Labels:
| Value |        Label       |
| :---: |  :---------------: |
|   1   |       WALKING      |
|   2   |  WALKING_UPSTAIRS  |
|   3   | WALKING_DOWNSTAIRS |
|   4   |       SITTING      |
|   5   |       STANDING     |
|   6   |       LAYING       |
