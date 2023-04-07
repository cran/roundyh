
<!-- README.md is generated from README.Rmd. Please edit that file -->

# roundyh

<!-- badges: start -->
<!-- badges: end -->

Implement a simple rounding function. The default round function in R
uses the IEC 60559 standard therefore it rounds 0.5 to 0 and round -1.5
to -2. The roundx rounding function accounts for this and helps to round
0.5 up.

## Installation

You can install the development version of roundyh like so:

``` r
install.packages('roundyh')
```

## Example

### Round Number

``` r
library(roundyh)
roundx(10.111, 1)
#> [1] 10.1
```

### Round Dataframe

``` r
roundx_df(data.frame(c(1.111, 1, 1.11), c(1, 1, 1), c("a", "b", "c")), 1)
#>   c.1.111..1..1.11. c.1..1..1. c..a....b....c..
#> 1               1.1          1                a
#> 2               1.0          1                b
#> 3               1.1          1                c
```
