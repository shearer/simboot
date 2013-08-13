\name{mcpHill}
\alias{mcpHill}

\title{ Multiplicity-adjusted p-values for comparing biodiversity via
  simultaneous inference of a user-defined selection of diversity
  indices }
\description{ The function mcpHill allows for comparing
  biological diversities of two or more groups. It simultaneously tests
  a user-defined selection of Hill numbers of orders q, which are
  considered appropriate and useful indices for measuring diversity
  (Jost 2008). As an output mcpHill gives p-values adjusted for
  multiplicity according to the method of Westfall & Young (1993).  }
\usage{ mcpHill(dataf, fact, align = FALSE, block, boots = 5000, udmat
  = FALSE, usermat, mattype = "Dunnett", dunbase = 1, qval = seq(-1, 3),
  opt = "two.sided") }

\arguments{
  \item{dataf}{	Data frame containing numerical values (e.g. species
    counts or relative abundances).  Rows represent repeated
    observations of the (two or more) groups, columns
    represent taxonomic units (usually species, or phyla,
    classes etc.).}
  \item{fact}{ Vector assigning (two or
    more) factor levels to the observations, i.e. the groups
    to be compared. The length of fact must equal the number
    of rows in dataf.}
  \item{align}{	Logical
    indicating whether a block alignment should be carried
    out. If TRUE, the blocks must be specified as a vector
    in block. Default is FALSE.}
  \item{block}{	Vector
    assigning which block an observation belongs to. Only
    required if align=TRUE.  The length of block must equal
    the number of rows in dataf.}
  \item{boots}{	Number
    of bootstrap replications. Values lower than 999 are
    rejected. Default is 5000.}
  \item{udmat}{	Logical
    indicating whether used-defined contrasts are applied
    for multiple testing. If TRUE, a contrast matrix has to
    be specified via usermat. Default is FALSE, meaning that
    the contrast matrix is specified by a catchword
    (e.g. "Tukey", "Dunnett" etc.).}
  \item{usermat}{
    Matrix specifying user-defined multiple testing
    contrasts. Only required if udmat=TRUE.  The row sums in
    the matrix must equal zero.}
  \item{mattype}{	Type of
    contrast matrix for multiple comparisons of
    groups. Hence only required for comparisons of more than
    two groups. Can be specified by the catchwords used in
    function \code{\link{contrMat}} (e.g. "Dunnett",
    "Tukey", "GrandMean", "AVE", "Williams", "Changepoint"
    etc.). Default is "Dunnett".}
  \item{dunbase}{	Integer determining the factor group (in alphanumerical order)
    to be considered the baseline or control and therefore
    only needed for Dunnett-type multiple contrasts.
    Default is 1.}
  \item{qval}{	Vector containing the
    requested selection of q-values in order to specify the
    Hill numbers of orders q to be investigated. Default is
    seq(-1,3).}
  \item{opt}{	"greater" performs an
    upper-tailed test, "less" a lower-tailed test and
    "two.sided" a two-tailed test. Default is "two.sided".}
}

\value{ The output of mcpHill is a matrix containing the chosen
  selection of Hill numbers (their orders q) in the first column. The
  multiplicity-adjusted p-values for each hypothesis tested are in the
  second column.  The names of the rows denote which groups are being
  compared.  }

\references{
  
  \emph{Jost, L. (2008)} G(ST) and its relatives do not measure
  differentiation. Molecular Ecology, 17, 4015-4026.

  \emph{Westfall, P.H. and Young S.S. (1993)} Resampling-based multiple
  testing: examples and methods for p-value adjustment. New York: Wiley.
  
}

\author{ Philip Pallmann }

\examples{
### Multiple testing with user-defined contrasts after block alignment

data(predatGM)

mymat <- rbind( "GM - S1" = c(1,-1,0,0), "GM - S2" = c(1,0,-1,0), "GM -
  S3" = c(1,0,0,-1), "S1 - S2" = c(0,1,-1,0), "S1 - S3" = c(0,1,0,-1) )

# example runs with only 100 bootstrap steps. For estimation use 2000 or more.
mcpHill(dataf=predatGM[,3:35], fact=predatGM[,2], align=TRUE,
block=predatGM[,1], boots=100, udmat=TRUE, usermat=mymat, qval=seq(-1,
3, by=0.5))

# with Dunnett-type contrast matrix
mcpHill(dataf=predatGM[,3:35], fact=predatGM[,2], align=TRUE,
block=predatGM[,1], boots=100, udmat=FALSE, mattype = "Dunnett", qval=seq(-1,
3, by=0.5))

}

\keyword{ htest }
