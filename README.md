
<!-- README.md is generated from README.Rmd. Please edit that file -->
metamedian
==========

The goal of metamedian is to provide a method of estimating the approximate variance of the sample median provided with summary statistics.

The function takes the arguments sample size *n*, along with sample summary statistics taken from one of the following sets: *C*<sub>1</sub> := {*a*, *m*, *b*}, *C*<sub>2</sub> := {*q*<sub>1</sub>, *m*, *q*<sub>3</sub>}, or *C*<sub>3</sub> := {*a*, *q*<sub>1</sub>, *m*, *q*<sub>3</sub>, *b*}.

From these known sample summary statistics, the variance of the sample median is estimated.

This package will also include the analysis and comparison with existing estimators.

Installation
------------

You can install metamedian from github with:

``` r
# install.packages("devtools")
devtools::install_github("softloud/metamedian")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
```
