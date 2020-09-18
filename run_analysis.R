# load tidyverse which contains a number of functions that will be used
library(tidyverse)

# load train data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
Sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# load test  data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
Sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#combine train and test data
X_data <- rbind(X_train,X_test)
Y_data <- rbind(Y_train,Y_test)
Sub_data <- rbind(Sub_train,Sub_test)

# load variable names and add to data
var_names <- read.table("./UCI HAR Dataset/features.txt")

# load activity labels
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# determine which variables are means and standard deviations and 
# discards others
means<-filter(var_names,str_detect(V2,"mean\\(\\)"))
stds<-filter(var_names,str_detect(V2,"std\\(\\)"))
both<-rbind(means,stds)
keep<-X_data[,both$V1]
all_data <-cbind(Sub_data,Y_data,keep)
colnames(all_data) <- c("Subject","Activity",var_names[both[,1],2])

# remove brackets and hyphens from names, add hyphen back at the start
# and capitalise
colnames(all_data) <- gsub("\\()","",colnames(all_data))
colnames(all_data) <- gsub("-","",colnames(all_data))
colnames(all_data) <- gsub("mean","-Mean",colnames(all_data))
colnames(all_data) <- gsub("std","-Std",colnames(all_data))

# add the meaningful activity names
all_data$Activity <- factor(all_data$Activity, levels = act_labels[,1], labels = act_labels[,2])

# generate means for each combination of Activity and Subject
all_mean <- all_data %>% group_by(Activity, Subject) %>% summarise_all(mean)

# write to text file
write.table(all_mean, file = "./tidydata.txt", row.names = FALSE, col.names = TRUE)