# Readme for Project Script

## Description
The run_analysis.R script loads the data corresponding to the
Human Activity Recognition project, and then processes the data to 
create a tidy data set from it. 

To run the script, the running directory must contain the
original data in exactly the original structure, i.e. the
directory containing the script must contain the following hierarchy:

* getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/
*    /test
	*   X_test.txt
    *   Y_test.txt
    *  subject_test.txt
*    /train
    *   X_train.txt
	*   Y_train.txt
    *   subject_train.txt
    *   activity_labels.txt
    *   features.txt

													
To run the script in R,

source("run_analysis.R")
run_analysis()

The script first merges the data sets from the test and train directories
in the following fashion:
* | subject_test,  Y_test X_test |
* | subject_train, Y_train, X_train |

Then, the mean and standard deviation measurements are extracted from the merged
data, and the activity IDs are replaced by activity labels. 

Next, the columns names are updated with more descriptive names (see CodeBook.md).
Finally, the mean of the different measurements are obtained for every subject
performing each of the 6 activities.

The result is a file called "tidy_data.txt" (uploaded) contains 68 columns and 180 rows.
