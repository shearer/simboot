# [simboot](https://github.com/shearer/simboot)

## Corresponding publications
The simultaneous confidence intervals for Shannon's and Simpson's indices are described and compared in the [SCfDI paper](http://www.ncbi.nlm.nih.gov/pubmed/23401312).  
The comparison of two or more groups of observations, while simultaneously testing a user-defined selection of a number of 'true' diversity measures is published in the [Hill paper](http://www.ncbi.nlm.nih.gov/pubmed/22934781).

## Other resources
The simboot project also has a corresponding homepage which can by found at [the simboot home page](http://shearer.github.com/simboot/).

To post feature requests or ask for help, try [the simboot Issue Tracker](https://github.com/shearer/simboot/issues?page=1&state=open).

## Development

To install the development version of the simboot package, it is easiest to use the [devtools](http://cran.r-project.org/web/packages/devtools/index.html) package:

    install.packages("devtools")  # if needed..
    library(devtools)
    install_github("simboot", "shearer")
    library(simboot)
