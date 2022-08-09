install.packages("jsonlite")
demo_table[3,3]library(tidyverse)
library(dplyr)
library(jsonlite)
  
?read.csv
demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)

demo_table2 <- fromJSON(txt='demo.json')

demo_table[3,"Year"]

demo_table$"Vehicle_Class"

demo_table$"Vehicle_Class"[2]

filter_table <- demo_table2[demo_table2$price > 10000,]

filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status) #filter by price and drivetrain

filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status) & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]

?sample()

sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)

num_rows <- 1:nrow(demo_table)
sample_rows <- sample(num_rows, 3)
demo_table[sample_rows,]

demo_table[sample(1:nrow(demo_table), 3),]

## 15.2.5 Transform, Group, and Reshape Data Using the Tidyverse Package
## Transform
## mutate() function used to transform a data frame and include new calculated data columns
## transformed data frames can be used in further downstream analysis, ....
## visualizations, and modeling. However, transformed data frames are not ....
## designed to summarize data. To summarize our data frames in R, ....
## we'll need to use a grouping function.
?mutate()

demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) #add columns to original data frame