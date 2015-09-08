# === script preparation === #
setwd("~/Documents/8 - Practical Machine Learning/project/")
rm(list=ls())
library(caret)

# === read file === #
download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv","./training.csv",method = "wget")
download.file("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv","./testing.csv",method = "wget")
training <- read.csv("./training.csv",T,",",na.strings = "NA")
testing <- read.csv("./testing.csv",T,",",na.strings = "NA")

# === processing 1 ===#

#Velloso, E.; Bulling, A.; Gellersen, H.; Ugulino, W.; Fuks, H. Qualitative Activity Recognition of Weight Lifting
#Exercises. Proceedings of 4th International Conference in Cooperation with SIGCHI (Augmented Human '13) .
#Stuttgart, Germany: ACM SIGCHI, 2013. Read more: http://groupware.les.inf.puc-rio.br/har#ixzz3lBAKkHTy

