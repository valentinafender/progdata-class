library(tidyverse)

library(ggdist)

knitr::opts_chunk$set(fig.width = 5, fig.height = 4, fig.align = "center")

plastic_waste <- read.csv(file.choose(), header = T)

plastic_waste

#Codes marked with red dots were provided directly from 17.4 Exercises section.
ggplot(data = plastic_waste) +
  aes(x = plastic_waste_per_cap) +
  geom_histogram(binwidth = 0.2)
#Removed 51 rows containing non-finite values (stat_bin).
plastic_waste |>
  filter(plastic_waste_per_cap > 3.5)
# TTO Trinidad and Tobago has the largest waste_per_cap.
ggplot(data = plastic_waste) +
  aes(x = plastic_waste_per_cap) +
  geom_histogram(binwidth = 0.2)
#The code above takes the data from plastic_waste data frame and shows you the code + entity's that have a 'plastic_waste_per_cap greater than 3.5 kg/person'.
#>The code below is copy paste directly from text in 17.4.1 o tell it to put counts, not densities on the y-axis.
#x = full continent name, y = count instead of y = density. o wow.
ggplot(plastic_waste) +
  aes(x = continent) +
  geom_density() +
  aes(y = after_stat(count))

ggplot(plastic_waste) +
  aes(x = continent,
      y = plastic_waste_per_cap,
      fill = continent,
      color = continent)

#Add more to it 
ggplot(plastic_waste) +
  aes(x = continent,
      y = plastic_waste_per_cap,
      fill = continent,
      color = continent) +
  geom_jitter(height = .15) +
  geom_boxplot(color = "black",
               alpha = .5,
               width = .1,
               size = .5)

#Add more to it 
ggplot(plastic_waste) +
  aes(x = continent,
      y = plastic_waste_per_cap,
      fill = continent,
      color = continent) +
  geom_jitter(height = .15) +
  geom_boxplot(color = "black",
               alpha = .5,
               width = .1,
               size = .5) +
  ggdist::stat_slab(height = .3,
                    color = "black",
                    size = .2,
                    alpha = .5,
                    position = position_nudge(y = .2))

#Add more to it 
ggplot(na.omit(plastic_waste)) +
  aes(x = continent,
      y = plastic_waste_per_cap,
      fill = continent,
      color = continent) +
  geom_jitter(height = .15) +
  geom_boxplot(color = "black",
               alpha = .5,
               width = .1,
               size = .5) +
  ggdist::stat_slab(height = .3,
                    color = "black",
                    size = .2,
                    alpha = .5,
                    position = position_nudge(y = .2))


























