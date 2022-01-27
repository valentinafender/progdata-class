---
title: "GG"
author: "Valentina Fender"
date: "1/25/2022"
output: html_document

plot(airquality[,1:4])


library(tidyverse)


ggplot(gapminder) +
  aes(x = gdpPercap, y = lifeExp) + 
  geom_point(alpha = 0.1) +
  scale_x_continuous(
    name = "GDP per capita", 
    trans = "log10",
    labels = scales::dollar_format()
  ) +
  theme_bw() +
  scale_y_continuous("Life expectancy")


gapminder |> 
  filter(year == 2007) |> 
  mutate(continent = fct_infreq(continent)) |> 
  ggplot() +
  aes(x = continent, fill = continent) +
  geom_bar() +
  guides(fill = "none") +
  theme_bw()

ggplot(gapminder) +
  aes(x = gdpPercap, y = lifeExp) + 
  geom_point(color = "purple")

ggplot(gapminder) +
  aes(x = gdpPercap, y = lifeExp) + 
  geom_point(color = "orange", alpha = .1)


ggplot(gapminder) +
  aes(x = gdpPercap, y = lifeExp) + 
  geom_point(color = "blue", alpha = .1) +
  scale_x_continuous(
    name = "GDP per capita", 
    trans = "log10", 
    labels = scales::dollar_format()
  )

ggplot(gapminder) +
  aes(x = gdpPercap, y = lifeExp) + 
  geom_point(color = "blue", alpha = .1) +
  scale_x_continuous(
    name = "GDP per capita", 
    trans = "log10", 
    labels = scales::dollar_format()
  ) +
  theme_bw() +
  ylab("Life expectancy")

