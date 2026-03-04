# List available Lucide icons

Returns the names of all icons bundled in this version of 'lucidr'.

## Usage

``` r
lucide_list()
```

## Value

A character vector of icon names.

## Examples

``` r
head(lucide_list(), 10)
#>  [1] "a-arrow-down"      "a-arrow-up"        "a-large-small"    
#>  [4] "accessibility"     "activity"          "air-vent"         
#>  [7] "airplay"           "alarm-clock"       "alarm-clock-check"
#> [10] "alarm-clock-minus"
length(lucide_list())
#> [1] 1688
```
