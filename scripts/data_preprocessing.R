library(openxlsx)
library(lubridate)
filename <- "data/Fareshare records from April to July plus.xlsx"
data <- read.xlsx(filename, sheet = "Market Drayton (April)", rows = c(2,5:500))
data <- data[,-c(15:50)]
is.na(data[58,])
data$Received <- as.Date(data$Received, origin = "1899-12-30")
apply(apply(X = data, 2, FUN = is.na), 2, FUN = sum)
data <- data[complete.cases(data),]

names(data)
head(data)
tail(data)
data[,1:2]




data1 <- read.xlsx(filename, sheet = "Market Drayton (May)", rows = c(2,5:500))
data1 <- data1[,-c(15:50)]
data1$Received <- as.Date(data1$Received, origin = "1899-12-30")
data1[,1:2]

