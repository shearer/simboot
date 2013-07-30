\name{predatGM}
\alias{predatGM}
\docType{data}
\title{
Abundance data of predatory insects
}
\description{
In a field trial with 8 complete blocks, one genetically modified crop variety and three varieties without genetical modification (S1, S2, S3) have been cultivated. 
Note that S1 is genetically closely related to the GM variety, and mainly differs from GM by not containing the transformation, while S2 and S3 are conventional varieties, which are genetically not closely related to GM and S1. In each of the 24 plots, a certain taxonomic group of predatory insects has been trapped. Trapped individuals have been classified to the species level. A total of 33 different species has been observed. For each plot, the summed counts of each species over one cultivation period is given in the variables Sp1, Sp2,...Sp33.
Among others, one question in research was: Does the genetic modified variety effect biodiversity of the (ecologically important, non-target) species?
}
\usage{data(predatGM)}
\format{
  A data frame with 32 observations on the following 35 variables.
  \describe{
    \item{\code{Block}}{a numeric vector, values 1,...,8 indicate the blocks of the trial }
    \item{\code{Variety}}{a factor distinguishing the four varieties in the field trial, with levels \code{GM} (the genetically modified variety), \code{S1} (the near-isogenic, conventional variety), \code{S2} and \code{S3} (further conventional varieties)}
    \item{\code{Sp1}}{a numeric vector, observed counts of species 1}
    \item{\code{Sp2}}{a numeric vector, ...}
    \item{\code{Sp3}}{a numeric vector}
    \item{\code{Sp4}}{a numeric vector}
    \item{\code{Sp5}}{a numeric vector}
    \item{\code{Sp6}}{a numeric vector}
    \item{\code{Sp7}}{a numeric vector}
    \item{\code{Sp8}}{a numeric vector}
    \item{\code{Sp9}}{a numeric vector}
    \item{\code{Sp10}}{a numeric vector}
    \item{\code{Sp11}}{a numeric vector}
    \item{\code{Sp12}}{a numeric vector}
    \item{\code{Sp13}}{a numeric vector}
    \item{\code{Sp14}}{a numeric vector}
    \item{\code{Sp15}}{a numeric vector}
    \item{\code{Sp16}}{a numeric vector}
    \item{\code{Sp17}}{a numeric vector}
    \item{\code{Sp18}}{a numeric vector}
    \item{\code{Sp19}}{a numeric vector}
    \item{\code{Sp20}}{a numeric vector}
    \item{\code{Sp21}}{a numeric vector}
    \item{\code{Sp22}}{a numeric vector}
    \item{\code{Sp23}}{a numeric vector}
    \item{\code{Sp24}}{a numeric vector}
    \item{\code{Sp25}}{a numeric vector}
    \item{\code{Sp26}}{a numeric vector}
    \item{\code{Sp27}}{a numeric vector}
    \item{\code{Sp28}}{a numeric vector}
    \item{\code{Sp29}}{a numeric vector}
    \item{\code{Sp30}}{a numeric vector}
    \item{\code{Sp31}}{a numeric vector}
    \item{\code{Sp32}}{a numeric vector}
    \item{\code{Sp33}}{a numeric vector}
  }
}

\source{
Data set provided by Kai U. Priesnitz, Bavarian State Research Center for Agriculture, Institute for Plant
 Protection, Freising, Germany.
}

\examples{
data(predatGM)

str(predatGM)

# Display data as a mosaicplot

# load("D:/Mueller/Biodiv/data/predatGM.rda")

# Matrix of counts with appropriate names
COUNTS<-as.matrix(predatGM[,3:35])
SPECNAM<-names(predatGM)[3:35]
colnames(COUNTS)<-SPECNAM
rownames(COUNTS)<-predatGM[,"Variety"]

# Assign colors and order by decreasing total abundance
COL<-grey(c(0,2,4,6,8,1,3,5,7)/8)
DMO<-COUNTS[,order(colSums(COUNTS), decreasing=TRUE)]
colnames(DMO)[15:33]<-"."

# Mosaicplot
par(mar=c(4,2,1,1))
mosaicplot(DMO, col=COL, las=2, off=15, main="", cex=1.1)
mtext("A", side=3, line=-1.5, adj=0, cex=2)


}
\keyword{datasets}
