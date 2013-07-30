\name{saproDipGM}
\alias{saproDipGM}
\docType{data}
\title{
Abundance data of Diptera with saprophagous larvae
}
\description{
In a field trial with 6 complete blocks, three treatments have been applied: a genetically modified crop variety was cultivated without insecticide treatment (GM), its near-isogenic counterpart (i.e. not genetically modified but otherwise genetically closely related to the GM crop) has been cultivated without insecticide treatment (Iso), and the near-isogenic variety has been cultivated with insecticide treatment (Ins).
In each of the 18 plots, two emergence traps have been placed and Diptera with saprophagous larvae were classified to the species level and counted.
 A total number of 25 different species has been observed and included in the present data set. For each plot, the summed counts of each species over one cultivation period (in 2002) and the two traps is given in the columns Acor, ..., Tnud.
Among others, one question in this trial was: Does the genetic modified variety effect biodiversity of the (ecologically important, non-target) species in comparison to the isogenic variety (as a negative control) and in comparison to the insecticide treated plants (as a positive control)?
}
\usage{data(saproDipGM)}
\format{
  A data frame with 18 observations on the following 27 variables.
  \describe{
    \item{\code{Block}}{a numeric vector, values 1,...,6 indicate the blocks of the trial}
    \item{\code{Variety}}{a factor, distinguishing the 3 treatment levels: \code{GM} (genetically modified, no insecticide), \code{Ins} (not genetically modified, insecticide treatment) , and \code{Iso} (not genetically modified, no insecticide)}
    \item{\code{Acor}}{a numeric vector of counts of the first species}
    \item{\code{Arub}}{a numeric vector...}
    \item{\code{Aaph}}{a numeric vector}
    \item{\code{Bbre}}{a numeric vector}
    \item{\code{Btri}}{a numeric vector}
    \item{\code{Burt}}{a numeric vector}
    \item{\code{Bvag}}{a numeric vector}
    \item{\code{Bill}}{a numeric vector}
    \item{\code{Ccru}}{a numeric vector}
    \item{\code{Cmir}}{a numeric vector}
    \item{\code{Cvag}}{a numeric vector}
    \item{\code{Dnit}}{a numeric vector}
    \item{\code{Dand}}{a numeric vector}
    \item{\code{Lcin}}{a numeric vector}
    \item{\code{Lcas}}{a numeric vector}
    \item{\code{Malt}}{a numeric vector}
    \item{\code{Moli}}{a numeric vector}
    \item{\code{Mluc}}{a numeric vector}
    \item{\code{Mtox}}{a numeric vector}
    \item{\code{Ppha}}{a numeric vector}
    \item{\code{Sato}}{a numeric vector}
    \item{\code{Spal}}{a numeric vector}
    \item{\code{Sate}}{a numeric vector}
    \item{\code{Sleu}}{a numeric vector}
    \item{\code{Tnud}}{a numeric vector}
  }
}

\source{
Data set provided by Dr. Sabine Prescher,Institute for Biosafety of Genetically Modified Plants, Julius-Kuehn-Institut, Braunschweig, Germany
}

\examples{
data(saproDipGM)

str(saproDipGM)

# load("D:/Mueller/Biodiv/data/saproDipGM.rda")

# Display data as a mosaicplot

# Matrix of counts with appropriate names
COUNTS<-as.matrix(saproDipGM[,3:27])
SPECNAM<-names(saproDipGM)[3:27]
colnames(COUNTS)<-SPECNAM
rownames(COUNTS)<-saproDipGM[,"Variety"]

# Assign colors and order by decreasing total abundance
COL<-grey(c(0,2,4,6,8,1,3,5,7)/8)
DMO<-COUNTS[,order(colSums(COUNTS), decreasing=TRUE)]

# Mosaicplot
par(mar=c(4,2,1,1))
mosaicplot(DMO, col=COL, las=2, off=15, main="", cex=1.1)
mtext("A", side=3, line=-1.5, adj=0, cex=2)

}
\keyword{datasets}
