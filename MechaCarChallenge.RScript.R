dplyr <- library(dplyr)

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)
)

Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

total_summary <- summarize(Suspension_Coil, mean(PSI), median(PSI), var(PSI), sd(PSI))                                               

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = 'keep')

t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot1")$PSI, mu=1500, conf.level = 0.95)

t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot2")$PSI, mu=1500, conf.level = 0.95)

t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot3")$PSI, mu=1500, conf.level = 0.95)