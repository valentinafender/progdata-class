library(tidyverse)

library(palmerpenguins)

library(ggplot2)

ggplot(penguins) +
  aes(x = factor(1),
      fill = species,
      label = species) +
  geom_bar(width = 1) +
  stat_count(geom = "text",
             size = 5,
             color = "white",
             position = position_stack(vjust = .5)
  ) +
  guides(y = guide_none(),
         x = guide_none(),
         fill = guide_none()) +
  xlab(NULL) +
  ylab(NULL) +
  coord_polar(theta = "y") +
  theme(axis.text = element_blank(),
        axis.line = element_blank(),
        axis.ticks = element_blank())