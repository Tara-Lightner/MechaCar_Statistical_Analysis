library(tidyverse)
library(dplyr)

#Deliverable 1: Linear Regression Function to Predict MPG
## Import and Read CSV File: 
mecha_data <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

## Use the Linear Regression Function
### lm() function, pass in all six variables (i.e., columns),....
### and add the dataframe you created in Step 4 as the data parameter.
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_data)

### Run a Multiple Linear Regression RScript

### Use the Summary Function for Multiple Linear Regression
### summary() function, determine the p-value and the r-squared....
### value for the linear regression model
summary(mecha_lm)


# Deliverable 2: Summary Statistics on Suspension Coils
## Import and Read a CSV File

suspension_data <- read.csv("Suspension_Coil.csv",stringsAsFactors = F,check.names = F)

## Create a total_summary dataframe using the summarize() function...
## to get the mean, median, variance, and standard deviation of....
## the suspension coil’s PSI column.
total_summary <- suspension_data %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

### creates a lot_summary dataframe using the group_by()....
### and the summarize() functions to group each manufacturing lot....
### by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')


## Deliverable 3: T-Test on Suspension Coils
## The Different Statistical Test Types
t.test(suspension_data$PSI, mu=1500)

## Perform a Sample T-Test
t.test(subset(suspension_data, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(suspension_data, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(suspension_data, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

## Deliverable 4: Design a Study Comparing the MechaCar to the Competition

?read.csv





