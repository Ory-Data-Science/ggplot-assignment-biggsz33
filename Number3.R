#load library
library(tidyverse)

#load data
dat <- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
                sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00"))

#rest of your code goes here
ggplot(dat, aes(x = mass.g., y = newborn.g.)) +
  geom_point(size = 3, color = "black") +
  labs(x = "Adult Mass (grams)", y = ("Newborn Mass (grams)"))

ggplot(dat, aes(x = log10(mass.g.), y = log10(newborn.g.))) + 
  geom_point(size =2, color =  "blue") +
  labs( x = "Log Adult Mass", y = "Log Newborn Mass")

ggplot(dat, aes(x = mass.g., y = newborn.g., color = order)) +
  geom_point() +
  labs(x = "Body Mass (g)", y = ("Metabolic Rate")) + scale_y_log10() + scale_x_log10()

ggplot(dat, aes(x = mass.g., y = newborn.g., color = order)) +
  geom_point() +
  labs(x = "Body Mass (g)", y = ("Metabolic Rate")) + scale_y_log10() + scale_x_log10() +
  facet_wrap(~ order)

ggplot(dat, aes(x = mass.g., y = newborn.g., color = order)) +
  geom_point() +
  labs(x = "Body Mass (g)", y = ("Metabolic Rate")) + scale_y_log10() + scale_x_log10() +
  facet_wrap(~ order) +
  geom_smooth(method = "lm")
