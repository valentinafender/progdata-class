library(tidyverse)

library(palmerpenguins)

library(ggplot2)

ggplot(penguins) +
  aes(y = island,
      color = fct_rev(species),
      fill = fct_rev(species),
      label = fct_rev(species)) +
  stat_count(orientation = "y") +
  guides(color = guide_none(),
         fill = guide_none()) +
  ylab(NULL) +
  stat_count(geom = "label",
             color = "white")