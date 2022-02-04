# Load required packages
library(tidyverse) # loads ggplot2 and other tidyverse packages
library(gapminder) # loads the gapminder dataset

# Set a default figure size
knitr::opts_chunk$set(fig.width = 5, fig.height = 4, fig.align = "center")



(mauna <- tsibble::as_tsibble(co2) |> 
    rename(month = index, conc = value))
#> # A tsibble: 468 x 2 [1M]
#>       month  conc
#>       <mth> <dbl>
#>  1 1959 Jan  315.
#>  2 1959 Feb  316.
#>  3 1959 Mar  316.
#>  4 1959 Apr  318.
#>  5 1959 May  318.
#>  6 1959 Jun  318 
#>  7 1959 Jul  316.
#>  8 1959 Aug  315.
#>  9 1959 Sep  314.
#> 10 1959 Oct  313.
#> # . with 458 more rows

ggplot(mauna) +
  aes(x = month, y = conc) +
  geom_smooth() +
  tsibble::scale_x_yearmonth()

