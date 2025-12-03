library(moments)
?mean
#import package for data wrangling
library(tidyverse)
getwd()
setwd("/Users/gayathrigmenon/Desktop/Fall\'25/MIS\ 7700\ Data\ Analytics/mid\ term\ Project")
Electro=filter(US_Supply_Chain,Product_Category=="Electronics")
shapiro.test(Electro$Order_Value_USD)
Electro$log10_Order_Value <- log(Electro$Order_Value_USD, base = 10)
shapiro.test(Electro$log10_Order_Value)
install.packages("BSDA")
library(BSDA)
z.test(x = Electro$Order_Value_USD,mu = 25290,sigma.x = 14380,alternative = "greater")