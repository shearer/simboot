# [simboot](https://github.com/shearer/simboot)
[![Travis-CI Build Status](https://travis-ci.org/shearer/simboot.svg?branch=master)](https://travis-ci.org/shearer/simboot)  [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/simboot)](https://cran.r-project.org/package=simboot/) ![downloads](http://cranlogs.r-pkg.org/badges/grand-total/simboot)

## Corresponding publications
The simultaneous confidence intervals for Shannon's and Simpson's indices are described and compared in the [SCfDI paper](http://www.ncbi.nlm.nih.gov/pubmed/23401312).  
The comparison of two or more groups of observations, while simultaneously testing a user-defined selection of a number of 'true' diversity measures is published in the [Hill paper](http://www.ncbi.nlm.nih.gov/pubmed/22934781).

## Other resources
The simboot project also has a corresponding homepage which can by found at [the simboot home page](http://shearer.github.com/simboot/).

To post feature requests or ask for help, try [the simboot Issue Tracker](https://github.com/shearer/simboot/issues?page=1&state=open).

## Development

To install the development version of the simboot package, it is easiest to use the [devtools](https://cran.r-project.org/package=devtools/) package:

    install.packages("devtools")  # if needed..
    library(devtools)
    install_github("simboot", "shearer")
    library(simboot)
