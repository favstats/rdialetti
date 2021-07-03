
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rdialetti

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of `rdialetti` is to translate Italian into various Italian
dialects.

## Installation

You can install the development version of `rdialetti` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("favstats/rdialetti")
```

## Example

This is a basic example:

``` r
library(rdialetti)
## basic example code
```

``` r
get_napoletano("Chi non sta a sentire madre e padre va a morire dove non sa.")
#> Questa traduzione ha una affidabilità stimata de 43%
#> [1] "Chi nun sta a sentì madre e pate va a muri' aro' nun sa."
```
