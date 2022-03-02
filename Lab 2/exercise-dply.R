library(tidyverse)

library(gapminder)

select(gapminder, year, lifeExp, country)

#select all vars from 'country' to 'lifeExp'
select(gapminder, country:lifeExp)

# select all vars from
select(gapminder, -lifeExp)

select(gapminder, continent, everything())

# compare
select(gapminder, Continent = continent, Year = year)
  # select only shows the Continent row & Year row
rename(gapminder, Continent = continent, Year = year)
  # rename just renamed continent <- Continent & year <- Year but still showed the rest of the data.

arrange(gapminder, year)

arrange(gapminder, -year)

arrange(gapminder, year, lifeExp)

# Back to Guide