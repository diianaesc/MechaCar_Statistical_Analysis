# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
<img width="679" alt="Screen Shot 2022-08-11 at 5 54 44 PM" src="https://user-images.githubusercontent.com/104380112/184249216-69cf6e02-9761-4d91-ae1c-859bda9efb78.png">
<img width="515" alt="Screen Shot 2022-08-11 at 5 52 22 PM" src="https://user-images.githubusercontent.com/104380112/184249060-94fb4904-e377-4304-b70a-0e138943f312.png">

**Questions:**

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
 -  The intercept, vehicle_length, and ground_clearance provided a non-random amount of variance to the mpg values given the low values which are almost equal to zero 

Is the slope of the linear model considered to be zero? Why or why not?
 - All coefficientes are non-zero 
 - The significance level is equal to 0.05 which is higher than the p-value = 5.35e-11, which means that we can reject the null hypothesis and that the slope is not equal to zero 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
 - The R-squared of 0.6825 proves that this lineal model can effectively predict MechaCar prototypes 

## Summary Statistics on Suspension Coils

<img width="342" alt="Screen Shot 2022-08-11 at 6 19 50 PM" src="https://user-images.githubusercontent.com/104380112/184252530-7b902de4-7e08-4298-b438-ea3467e12e07.png">
<img width="500" alt="Screen Shot 2022-08-11 at 6 22 37 PM" src="https://user-images.githubusercontent.com/104380112/184252555-47352c82-9514-4ca7-91e1-3190de862118.png">

**Question:**

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- The total variance is lower than the 100 pounds limit (62.2 < 100) and meets the design specifications
- When the manufacturing lots are grouped by number: Lot 1 and 2 still meet the requirements of less than 100 pounds with a varience of 0.97 and 7.47 respectively. However, Lot 2 has a higher variance of 170, which is higher than the required 100 pounds. 

## T-Tests on Suspension Coils
<img width="423" alt="Screen Shot 2022-08-11 at 6 40 38 PM" src="https://user-images.githubusercontent.com/104380112/184255011-720604ce-fe88-4038-ac15-a7a1a3365845.png">

The significance level of 0.05 is lower than the p-value of 0.06, therefore we fail to reject the null hypothesis.

<img width="437" alt="Screen Shot 2022-08-11 at 6 45 35 PM" src="https://user-images.githubusercontent.com/104380112/184255027-5ed84d1b-dfb1-4c8b-9dee-3fc132666df3.png">

- Lot 1 - The significance level of 0.05 is lower than the p-value 1, therefore we fail to reject the null hypothesis
- Lot 2 - The significance level of 0.05 is lower than the p-value 0.6072, therefore we fail to reject the null hypothesis
- Lot 3 - The significance level of 0.05 is higher than the p-value 0.04168, therefore we can  reject the null hypothesis

## Study Design: MechaCar vs Competition

A chi-squared test on multiple categorical data (color, vehicle class, vehicle design, electric vs non-electric, etc) can  help us predict how the MechaCar is performing against the competition 

**Questions:**

What metric or metrics are you going to test? 
- Electric vs non-electric 

What is the null hypothesis or alternative hypothesis?
- H0 : There is no difference in frequency distribution between groups.
- Ha : There is a difference in frequency distribution between groups

What statistical test would you use to test the hypothesis? And why?
- A chi-squared test to measure categorical data

What data is needed to run the statistical test?
- A record of the number of electric vs non-electric cars in the market 
