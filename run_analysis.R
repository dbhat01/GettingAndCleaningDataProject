run_analysis <- function() {
    # Read data from test directory
    print ("Reading test data")
    X_test <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
    Y_test <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
    subject_test <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

    # Read data from train directory
    print ("Reading training data")
    X_train <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
    Y_train <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
    subject_train <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
    
    # Merging train/test tables as (subject, activity, measurement)
    # Then, combining the test and train data rows.
    
    print("Merging data")
    all_test_data <- cbind(subject_test, Y_test, X_test)
    all_train_data <- cbind(subject_train, Y_train, X_train)

    all_data <- rbind(all_test_data, all_train_data)
    
    
    # Read the features list.
    features_info <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
    
    # Search for mean and standard deviation measurements.
    m <- grep("mean\\(", features_info[[2]])
    s <- grep("std\\(", features_info[[2]])
    
    # The first two columns correspond to subject and activity, so skip
    m1 <- m + 2
    s1 <- s + 2
    
    # Extract mean and standard deviation columns.
    print("Extracting mean and std. dev data")
    mean_data <- all_data[,m1]
    std_data <- all_data[,s1]
    
    
    #Read the activity labels file and update the column for activity id with descriptive name
    activity_labels <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
    
    
    print("Updating activity column")
    
    for(i in activity_labels[,1]) {
        all_data[,2][all_data[,2] == i] <- as.character(activity_labels[i,2])
    }
    # Extract subject/activity_data
    subj_act_data <- all_data[,1:2]
    
    # Now combine all the requried data.
    required_data <- cbind(subj_act_data, mean_data, std_data)
    
    # Add descriptive variable names.
    
    subjectActivityColNames <- c("SubjectId", "ActivityName")
    
    meanColNames <- c("MeanOfTimeDomainBodyAccelerationAlongXAxis",
      "MeanOfTimeDomainBodyAccelerationAlongYAxis",
      "MeanOfTimeDomainBodyAccelerationAlongZAxis",
      "MeanOfTimeDomainGravityAccelerationAlongXAxis",
      "MeanOfTimeDomainGravityAccelerationAlongYAxis",
      "MeanOfTimeDomainGravityAccelerationAlongZAxis",
      "MeanOfTimeDomainBodyAccelerationJerkAlongXAxis",
      "MeanOfTimeDomainBodyAccelerationJerkAlongYAxis",
      "MeanOfTimeDomainBodyAccelerationJerkAlongZAxis",
      "MeanOfTimeDomainBodyGyroAngularVelocityAlongXAxis",
      "MeanOfTimeDomainBodyGyroAngularVelocityAlongYAxis",
      "MeanOfTimeDomainBodyGyroAngularVelocityAlongZAxis",
      "MeanOfTimeDomainBodyGyroAngularVelocityJerkAlongXAxis",
      "MeanOfTimeDomainBodyGyroAngularVelocityJerkAlongYAxis",
      "MeanOfTimeDomainBodyGyroAngularVelocityJerkAlongZAxis",
      "MeanOfTimeDomainBodyAccelerationMagnitude",
      "MeanOfTimeDomainGravityAccelerationMagnitude",
      "MeanOfTimeDomainBodyAccelerationJerkMagnitude",
      "MeanOfTimeDomainBodyGyroAngularVelocityMagnitude",
      "MeanOfTimeDomainBodyGyroAngularVelocityJerkMagnitude",
      "MeanOfFrequencyDomainBodyAccelerationAlongXAxis",
      "MeanOfFrequencyDomainBodyAccelerationAlongYAxis",
      "MeanOfFrequencyDomainBodyAccelerationAlongZAxis",
      "MeanOfFrequencyDomainBodyAccelerationJerkAlongXAxis",
      "MeanOfFrequencyDomainBodyAccelerationJerkAlongYAxis",
      "MeanOfFrequencyDomainBodyAccelerationJerkAlongZAxis",
      "MeanOfFrequencyDomainBodyGyroAngularVelocityAlongXAxis",
      "MeanOfFrequencyDomainBodyGyroAngularVelocityAlongYAxis",
      "MeanOfFrequencyDomainBodyGyroAngularVelocityAlongZAxis",
      "MeanOfFrequencyDomainBodyAccelerationMagnitude",
      "MeanOfFrequencyDomainBodyAccelerationJerkMagnitude",
      "MeanOfFrequencyDomainBodyGyroAngularVelocityMagnitude",
      "MeanOfFrequencyDomainBodyGyroAngularVelocityJerkMagnitude"
      
      )
    
    stdDevColNames <- c(      "StdDevOfTimeDomainBodyAccelerationAlongXAxis",
            "StdDevOfTimeDomainBodyAccelerationAlongYAxis",
            "StdDevOfTimeDomainBodyAccelerationAlongZAxis",
            "StdDevOfTimeDomainGravityAccelerationAlongXAxis",
            "StdDevOfTimeDomainGravityAccelerationAlongYAxis",
            "StdDevOfTimeDomainGravityAccelerationAlongZAxis",
            "StdDevOfTimeDomainBodyAccelerationJerkAlongXAxis",
            "StdDevOfTimeDomainBodyAccelerationJerkAlongYAxis",
            "StdDevOfTimeDomainBodyAccelerationJerkAlongZAxis",
            "StdDevOfTimeDomainBodyGyroAngularVelocityAlongXAxis",
            "StdDevOfTimeDomainBodyGyroAngularVelocityAlongYAxis",
            "StdDevOfTimeDomainBodyGyroAngularVelocityAlongZAxis",
            "StdDevOfTimeDomainBodyGyroAngularVelocityJerkAlongXAxis",
            "StdDevOfTimeDomainBodyGyroAngularVelocityJerkAlongYAxis",
            "StdDevOfTimeDomainBodyGyroAngularVelocityJerkAlongZAxis",
            "StdDevOfTimeDomainBodyAccelerationMagnitude",
            "StdDevOfTimeDomainGravityAccelerationMagnitude",
            "StdDevOfTimeDomainBodyAccelerationJerkMagnitude",
            "StdDevOfTimeDomainBodyGyroAngularVelocityMagnitude",
            "StdDevOfTimeDomainBodyGyroAngularVelocityJerkMagnitude",
            "StdDevOfFrequencyDomainBodyAccelerationAlongXAxis",
            "StdDevOfFrequencyDomainBodyAccelerationAlongYAxis",
            "StdDevOfFrequencyDomainBodyAccelerationAlongZAxis",      
            "StdDevOfFrequencyDomainBodyAccelerationJerkAlongXAxis",
            "StdDevOfFrequencyDomainBodyAccelerationJerkAlongYAxis",
            "StdDevOfFrequencyDomainBodyAccelerationJerkAlongZAxis",      
            "StdDevOfFrequencyDomainBodyGyroAngularVelocityAlongXAxis",
            "StdDevOfFrequencyDomainBodyGyroAngularVelocityAlongYAxis",
            "StdDevOfFrequencyDomainBodyGyroAngularVelocityAlongZAxis",
            "StdDevOfFrequencyDomainBodyAccelerationMagnitude",
            "StdDevOfFrequencyDomainBodyAccelerationJerkMagnitude",
            "StdDevOfFrequencyDomainBodyGyroAngularVelocityMagnitude",
            "StdDevOfFrequencyDomainBodyGyroAngularVelocityJerkMagnitude"
            
        
        )
    #Update the merged table with descriptive column names.
    print("Updating column names with descriptive names")
    colnames(required_data) <- c(subjectActivityColNames,meanColNames,stdDevColNames)
    
    print("Creating tidy_data and writing it to tidy_data.txt")
    # Aggregate data by subject Id and Activity Name.
    tidy_data <- aggregate(. ~ SubjectId + ActivityName, data = required_data, FUN=mean, na.rm=TRUE)
    
    #Write out the tidy data
    write.table(tidy_data, "tidy_data.txt")    
}