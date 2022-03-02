library(tidyverse)

library(ggplot2)

library(palmerpenguins)

theme_set(theme_classic())

ggplot(penguins) +
  aes(x = species) +
  geom_bar()