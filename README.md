
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fdesc

<!-- badges: start -->
<!-- badges: end -->

The goal of fdesc is to measure describtive statistics and export values
into excel file in table format.

## Installation

You can install the development version of fdesc like so:

``` r
library(devtools)
#> Warning: le package 'devtools' a été compilé avec la version R 4.2.3
#> Le chargement a nécessité le package : usethis
```

## Installation

You can install the development version of fdesc like so:

``` r
library(devtools)
```

``` r
devtools::install_github("Foha2001/fdesc")
```

## Example

``` r
library(fdesc)
```

To describe your database run this code

``` r
mytable<- desc(data)
mytable
#>                           mean          sd        median         min        max
#> GSPC.Close       -0.0002398655 0.011346004 -1.195375e-03 -0.02523748 0.02258384
#> X000001.SS.Close -0.0004534132 0.006795638 -8.528099e-04 -0.01935933 0.01748493
#> N225.Close       -0.0008768654 0.009052766  3.181096e-05 -0.02489128 0.02465426
#>                         skew       kurt
#> GSPC.Close        0.05479284 -0.9396836
#> X000001.SS.Close  0.11974311  0.4084317
#> N225.Close       -0.10200599  0.5799189
```

To export your Table to Excel format

``` r
export(mytable)
```

You will find your Excel table with the name descstatistics.xlsx
