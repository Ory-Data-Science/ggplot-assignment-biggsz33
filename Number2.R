# Load library
library(tidyverse)

#set up data frame for plotting
size_mr_data <- data.frame(
  body_mass = c(32000, 37800, 347000, 4200, 196500, 100000, 4290, 
    32000, 65000, 69125, 9600, 133300, 150000, 407000, 115000, 
    67000,325000, 21500, 58588, 65320, 85000, 135000, 20500, 1613,
    1618),
  metabolic_rate = c(49.984, 51.981, 306.770, 10.075, 230.073, 
    148.949, 11.966, 46.414, 123.287, 106.663, 20.619, 180.150, 
    200.830, 224.779, 148.940, 112.430, 286.847, 46.347, 142.863, 
    106.670, 119.660, 104.150, 33.165, 4.900, 4.865))
    
#code goes here
ggplot(size_mr_data, aes(x = body_mass, y = metabolic_rate)) +
  geom_point(size = 3, color = "black") +
  labs(x = "Body Mass (g)", y = ("Metabolic Rate"))

ggplot(size_mr_data, aes(x = log10(body_mass), y = log10(metabolic_rate))) + 
  geom_point(size =2, color =  "blue") +
  labs( x = "Log Body Mass", y = "Log Metabolic Rate")

ggplot(size_mr_data, aes(x = body_mass, y = metabolic_rate)) +
  geom_point() +
  labs(x = "Body Mass (g)", y = ("Metabolic Rate")) + scale_y_log10() + scale_x_log10()

