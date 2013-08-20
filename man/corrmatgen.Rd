\name{corrmatgen}
\alias{corrmatgen}
\title{
  Internal function. 
  }
\description{
  Correlation matrix for confidence intervals assuming multivariate
  standard normal distribution. Calculates the correlation matrix for method
  asci in function \code{\link{sbdiv}}
}
\usage{
corrmatgen(CM, varp)
}
\arguments{
  \item{CM}{ a matrix of contrast coefficients, dimension MxI, where M=number of contrasts, and I=number of groups in a oneway layout }
  \item{varp}{ a numeric vector of groupwise variance estimates (length = I) }
}
\value{
  A matrix of dimension MxM.
}
\keyword{ misc }