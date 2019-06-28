# loading libraries

library(dplyr)
library(stringr)

# 1. reading data
x_train <- read.csv("./Data/train/X_train.txt",header= FALSE,sep = "")
y_train <- read.csv("./Data/train/y_train.txt",header= FALSE,sep = "")
x_test <- read.csv("./Data/test/X_test.txt",header= FALSE,sep = "")
y_test <- read.csv("./Data/test/y_test.txt",header= FALSE,sep = "")
features <- read.csv("./Data/features.txt",header= FALSE,sep = "")
labels <- read.csv("./Data/activity_labels.txt",header= FALSE,sep = "")
s_train <- read.csv("./Data/train/subject_train.txt",header = FALSE, sep = "")
s_test<- read.csv("./Data/test/subject_test.txt",header = FALSE, sep = "")


dim(x_train)
dim(x_test)

# 2.  merging data
x <- rbind(x_train,x_test)
y <- rbind(y_train,y_test)
s <- rbind(s_train,s_test)
dim(x)
dim(y)

# 3. adding column names
names(x) <- features[,2]

# 4. select columns containing means and standard deviations

selected_c <- c(grep("mean",names(x)),grep("std",names(x)))
x_new <- x[,selected_c]

# 5. descriptive activity
func_repl <- function(x) labels[x,2]
  
y_des <- sapply(y, func_repl)

# 6. descriptive variable names
var_names_0 <- features[selected_c,2]
var_names_1 <- sapply(var_names_0,function(x) gsub("\\()","",x))
var_names_2 <- sapply(var_names_1,function(x) gsub("-","_",x))
var_names_3 <- sapply(var_names_2,function(x) gsub("^f","frequency_",x))
var_names_4 <- sapply(var_names_3,function(x) gsub("^t","time_",x))

names(x_new) <- var_names_4

# add subject and activity and create a new data frame with mean for each activity and subject
x_new["subject"] <- s
x_new["activity"] <- y_des[,1]

x_by_act_sub <- x_new %>% group_by(activity,subject) %>% summarise_all(mean,na.rm=TRUE)

