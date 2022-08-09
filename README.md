# MechaCar Statistical Analysis Report

## Background:

## Purpose:
The purpose of this exercise is to demonstrate the ability to: extract, transform, and load (ETL) data; visualize the data; and analyze the data using R. This includes tidyverse package contains libraries such as dplyr, tidyr, and ggplot2. These packages work together to help simplify the process of creating transformed data columns, grouping data using factors, reshaping our two-dimensional data structures, and visualizing our results using plots. Additionally, variety of statistical tests, their real-world application in data science, and their implementation in R. The goal is for you to apply these statistical concepts beyond this module, to any dataset, using any programming language—including Python.




## Deliverable 1: Linear Regression to Predict MPG
## Summary:

Mech Data
![Mecha_Data.PNG](/Images/Mecha_Data.PNG)

Mech lm
![Mecha_lm.PNG](/Images/Mecha_lm.PNG)

Mech lm Summary
![MechCar_lm_Summary.png](/Images/MechCar_lm_Summary.png)


### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? 
- With a significance level of 0.05 when looking at the Pr(>|t|) the vehicle_length and ground_clearance are both provide a non-random amount of variance to the mpg dataset. 
### Is the slope of the linear model considered to be zero? Why or why not?
- The p-value: 5.35e-11 < 0.05 significance level indicates the the slope is not considered to be zero.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model effectivley predict the mpg of MechaCar prototypes at an R-square value of 0.7149, so it will approxamelty predicate the values accurate 71% of the time.  What is consider effective may dependon on industry standards.

## Deliverable 2: Summary Statistics on Suspension Coils
## Summary
### detail and interpret the suspension coil summary statistics.
- The variance on level 3 is significantly highter at 170 compared to Lot1 at 1 and Lot2 at 7.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When running the statstics together it apepars that they are within standard, breaking them down by lot one can see that lot 3 does not meet the current manufacturing  design specification as the variance is 170.


Suspension Data

![Suspension_Data.png](/Images/Suspension_Data.png)

Suspension Total Summary

![Suspension_Total_Summary.png)](/Images/Suspension_Total_Summary.png)

Lot Summary Data Frame

![Suspension_Summary_by_Lot.PNG](/Images/Suspension_Summary_by_Lot.PNG)


## Deliverable 3: T-Test on Suspension Coils
## Summary
All p-values are above 0.05, except for Lot3 which has a p-value of 0.04, which indicate that it is statistically different from the mean.

Suspension Data T-test

![Suspension_One_Sample_Ttest.PNG](/Images/Suspension_One_Sample_Ttest.PNG)

Lot 1 T-test

![Suspension_One_Sample_Lot1_Ttest.PNG](/Images/Suspension_One_Sample_Lot1_Ttest.PNG)

Lot 2 T-test

![Suspension_One_Sample_Lot2_Ttest.PNG](/Images/Suspension_One_Sample_Lot2_Ttest.PNG)

Lot 3 T-test

![Suspension_One_Sample_Lot3_Ttest.PNG](/Images/Suspension_One_Sample_Lot3_Ttest.PNG)


## Deliverable 4: Design a Study Comparing the MechaCar to the Competition
## Summary

