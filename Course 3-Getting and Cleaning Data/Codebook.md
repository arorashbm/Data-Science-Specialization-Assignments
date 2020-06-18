---
title: "Codebook"
output: html_document
---

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

File **tidy_data.txt** contains 180 rows and 563 columns

Columns in the dataset includes(First 50):

* "activityname"                       
* "subject"                            
* "tbodyaccmeanx"                      
* "tbodyaccmeany"                      
* "tbodyaccmeanz"                      
* "tbodyaccstdx"                       
* "tbodyaccstdy"                       
* "tbodyaccstdz"                       
* "tbodyaccmadx"                       
* "tbodyaccmady"                       
* "tbodyaccmadz"                       
* "tbodyaccmaxx"                       
* "tbodyaccmaxy"                       
* "tbodyaccmaxz"                       
* "tbodyaccminx"                       
* "tbodyaccminy"                       
* "tbodyaccminz"                       
* "tbodyaccsma"                        
* "tbodyaccenergyx"                    
* "tbodyaccenergyy"                    
* "tbodyaccenergyz"                    
* "tbodyacciqrx"                       
* "tbodyacciqry"                       
* "tbodyacciqrz"                       
* "tbodyaccentropyx"                   
* "tbodyaccentropyy"                   
* "tbodyaccentropyz"                   
* "tbodyaccarcoeffx1"                  
* "tbodyaccarcoeffx2"                  
* "tbodyaccarcoeffx3"                  
* "tbodyaccarcoeffx4"                  
* "tbodyaccarcoeffy1"                  
* "tbodyaccarcoeffy2"                  
* "tbodyaccarcoeffy3"                  
* "tbodyaccarcoeffy4"                  
* "tbodyaccarcoeffz1"                  
* "tbodyaccarcoeffz2"                  
* "tbodyaccarcoeffz3"                  
* "tbodyaccarcoeffz4"                  
* "tbodyacccorrelationxy"
* "tbodyacccorrelationxz"              
* "tbodyacccorrelationyz"              
* "tgravityaccmeanx"                   
* "tgravityaccmeany"                   
* "tgravityaccmeanz"                   
* "tgravityaccstdx"                    
* "tgravityaccstdy"                    
* "tgravityaccstdz"                    
* "tgravityaccmadx"                    
* "tgravityaccmady"

## Activity Labels:
| Value |        Label       |
| :---: |  :---------------: |
|   1   |       WALKING      |
|   2   |  WALKING_UPSTAIRS  |
|   3   | WALKING_DOWNSTAIRS |
|   4   |       SITTING      |
|   5   |       STANDING     |
|   6   |       LAYING       |

