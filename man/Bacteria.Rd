\name{Bacteria}
\alias{Bacteria}
\docType{data}
\title{
Relative Abundances of Soil Bacteria
}
\description{
Relative abundances of soil bacteria from 27 samples collected
in nine forest and 18 grassland sites in Germany.  The data set
includes abundances of 18 bacterial phyla (including three
candidate phyla) and five proteobacterial classes.
}
\usage{data(Bacteria)}
\format{
  A data frame with 27 observations on the following 24 variables.
  \describe{
    \item{\code{Land use type}}{a factor with levels \code{forest} \code{grassland}}
    \item{\code{Acidobacteria}}{a numeric vector}
    \item{\code{Actinobacteria}}{a numeric vector}
    \item{\code{Bacteroidetes}}{a numeric vector}
    \item{\code{Chloroflexi}}{a numeric vector}
    \item{\code{Cyanobacteria}}{a numeric vector}
    \item{\code{Deinococcus-Thermus}}{a numeric vector}
    \item{\code{Fibrobacteres}}{a numeric vector}
    \item{\code{Firmicutes}}{a numeric vector}
    \item{\code{Fusobacteria}}{a numeric vector}
    \item{\code{Gemmatimonadetes}}{a numeric vector}
    \item{\code{Nitrospira}}{a numeric vector}
    \item{\code{OP11}}{a numeric vector}
    \item{\code{Planctomycetes}}{a numeric vector}
    \item{\code{Spirochaetes}}{a numeric vector}
    \item{\code{Tenericutes}}{a numeric vector}
    \item{\code{TM7}}{a numeric vector}
    \item{\code{Verrucomicrobia}}{a numeric vector}
    \item{\code{WS3}}{a numeric vector}
    \item{\code{Alphaproteobacteria}}{a numeric vector}
    \item{\code{Betaproteobacteria}}{a numeric vector}
    \item{\code{Deltaproteobacteria}}{a numeric vector}
    \item{\code{Gammaproteobacteria}}{a numeric vector}
    \item{\code{Epsilonproteobacteria}}{a numeric vector}
  }
}
\details{
Relative abundances of 18 bacterial phyla (including three
candidate phyla) and five proteobacterial classes (alpha, beta,
gamma, delta and epsilon) from two ecological metagenomics
studies (Will et al. 2010, Nacke et al. 2011).  There are 27
observations altogether, nine of which stem from forest and 18
from grassland plots in Germany.

One goal of these investigations was to unravel differences in
bacterial diversity and community composition between the land
use types forest and grassland. 

The bacteria's relative abundances were determined by analyzing
the V2-V3 region of the 16S rRNA gene via pyrosequencing-based
DNA techniques.
}
\source{
Will, C., Thuermer, A., Wollherr, A., et al. (2010) Horizon-
specific bacterial community composition of German grassland
soils, as revealed by pyrosequencing-based analysis of 16S rRNA
genes. \emph{Applied and Environmental Microbiology}, 76, 6751--6759.

Nacke, H., Thuermer, A., Wollherr, A., et al. (2011) Pyrosequencing-
based assessment of bacterial community structure along different
management types in German forest and grassland soils. \emph{PLoS One}, 
6, e17000.
}
\examples{
data(Bacteria)
str(Bacteria)

### Assess whether there is a difference in biodiversity and
### community composition species richness (Shannon index,
### Simpson index) between grassland and forest. 
### Bootstrap times set to 50 due to example time settings

library(simboot)
mcpHill(dataf=Bacteria[,2:24], fact=Bacteria[,1], boots=50, qval=c(0,1,2))
}
\keyword{datasets}
