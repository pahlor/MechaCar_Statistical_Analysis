dplyr <- library(dplyr)

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)
)

Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

total_summary <- summarize(Suspension_Coil, mean(PSI), median(PSI), var(PSI), sd(PSI))                                               

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = 'keep')

t.test((lot_summary$Mean), mu=1500)

?t.test()

Lot1 <- subset(lot_summary, Manufacturing_Lot == "Lot1")

t.test(formula = lot_summary$Mean[1], 1,
       data = lot_summary,
       subset = lot_summary$Manufacturing_Lot == "Lot1")


