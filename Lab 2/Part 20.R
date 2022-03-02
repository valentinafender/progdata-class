library(tidyverse)
library(gapminder)
library(dplyr)

gapminder[gapminder$country == "Cambodia", c("year", "lifeExp")]
_vs_
gapminder |>
  filter(country == "Cambodia") |>
  select(year, lifeExp)

both_produce_the_same_thing_