library(tidyverse)
Still_cant_fig_it_out_i_hate_this

'Formula_they_provided'
ggplot(data = plastic_waste) +
  aes(x = plastic_waste_per_cap) +
  geom_histogram(binwidth = 0.2)
#> Warning: Removed 51 rows containing non-finite values (stat_bin).

rlang::last_error()

'1.'

ggplot2::ggplot(data = plastic_waste)
aes(x = plastic_waste_per_cap) +
  geom_histogram(binwidth = 0.2)
#> Warning: Removed 51 rows containing non-finite values (stat_bin).

'2.'

ggplot2:::ggplot.function(data = plastic_waste)
aes(x = plastic_waste_per_cap) +
  geom_histogram(binwidth = 0.2)
#> Warning: Removed 51 rows containing non-finite values (stat_bin).

------

ggplot(data = plastic_waste()) +
  aes(x = plastic_waste_per_cap) +
  geom_histogram(binwidth = 0.2)
#> Warning: Removed 51 rows containing non-finite values (stat_bin).
----------------------------------------

plastic_waste |>
  filter(plastic_waste_per_cap > 3.5)
#> # A tibble: 1 × 10
#>   code  entity   continent   year gdp_per_cap plastic_waste_p. mismanaged_plast.
#>   <chr> <chr>    <chr>      <dbl>       <dbl>            <dbl>             <dbl>
#> 1 TTO   Trinida. North Ame.  2010      31261.              3.6              0.19
#> # . with 3 more variables: mismanaged_plastic_waste <dbl>, coastal_pop <dbl>,
#> #   total_pop <dbl>

library (readr)

urlfile="https://raw.githubusercontent.com/valentinafender/progdata-class/11db4ec9121d4187ffbb8e09b31a1f7eba5f6038/lab-02-plastic-waste%2017.2%20DATA_SET"

mydata<-read_csv(url(urlfile))

plastic_waste <- read_csv(url("https://raw.githubusercontent.com/valentinafender/progdata-class/11db4ec9121d4187ffbb8e09b31a1f7eba5f6038/lab-02-plastic-waste%2017.2%20DATA_SET"))