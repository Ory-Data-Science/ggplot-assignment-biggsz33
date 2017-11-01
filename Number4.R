#load library
library(tidyverse)

#load data from the internet, using tabs to seperate and replacing -999, etc with NA's 
dat <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999"))

#your code goes here
ggplot(data = dat, aes(x= F_mass)) + 
  labs(x = "Female Mass") +
  geom_histogram()

ggplot(data = dat, aes(x= log10(F_mass))) + 
  labs(x = "Log Female Mass (g)") +
  geom_histogram(fill = "blue")

ggplot(data = dat, aes(x= log10(F_mass))) + 
  labs(x = "Female vs Male Log Mass") +
  geom_histogram(fill = "blue") +
  geom_histogram(aes(x = log10(M_mass)), alpha = 0.3)

ggplot(data = dat, aes(x= log10(F_mass))) + 
  labs(x = "Female Mass vs Male Mass (log)") +
  geom_histogram(fill = "blue") +
  geom_histogram(aes(x = log10(M_mass)), alpha = 0.3) +
  facet_wrap(~Family)

ggplot(data = dat, aes(x= log10(F_wing))) + 
  labs(x = "Female Mass vs Male Mass (log)") +
  geom_histogram(fill = "blue") +
  geom_histogram(aes(x = log10(M_wing)), alpha = 0.3) +
  facet_wrap(~Family)


