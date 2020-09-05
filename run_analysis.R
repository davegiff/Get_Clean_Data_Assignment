# load tidyverse which contains a number of functions that will be used
library(tidyverse)

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
Sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

variable_names <- read.table("./UCI HAR Dataset/features.txt")

selected_var <- variable_names[grep("mean\\(\\)|std\\(\\)",variable_names[,2]),]

selected_var2 <- variable_names[grep("mean\\(\\)",variable_names[,2]),]

means<-filter(variable_names,str_detect(V2,"mean\\(\\)"))
stds<-filter(variable_names,str_detect(V2,"std\\(\\)"))

both<-rbind(means,stds)

keep<-X_train[,both$V1]