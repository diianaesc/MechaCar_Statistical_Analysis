## Deliverable 1

# 3. Import dplyr package
library(dplyr)
# 4. Import and read the file
mecha_car_mpg <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
# 5. Perform linear regression using the lm() function and add the dataframe 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
# 6. Using the summary() function determine the p-value and r-squared 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
# p-value: 5.35e-11
# Adjusted R-squared:  0.6825 

## Deliverable 2

# 2. Import and read the csv file
susp_coil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# 3. Create a data frame summary 
total_summary <- susp_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# 4. Create a lot_summary dataframe using the group_by() and the summarize functions
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))


## Deliverable 3
# 1. Using the t.test() function determine if the PSI accross all lots is statistically different from the population mean of 1,500 pounds
t.test(susp_coil$PSI, mu = 1500)
# 2. Using the t.test() and the subset() argument determine the PSI for each lot is statistically different from the population mean of 1,500 pounds 
Lot1 = subset(susp_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(susp_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(susp_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu = 1500)



