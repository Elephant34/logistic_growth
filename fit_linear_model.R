#Script to estimate the model parameters using a linear approximation

install.packages("dplyr")
library(dplyr)

growth_data <- read.csv("experiment2.csv")

#Case 1. K >> N0, t is small

# Chose t<10
data_subset1 <- growth_data %>% filter(t<100) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K

# Chose 600
data_subset2 <- growth_data %>% filter(t>600)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)
