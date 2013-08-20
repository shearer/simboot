\name{estShannonWY}
\alias{estShannonWY}
\title{
  Estimator for Shannon's index row wise.
}
\description{
  Estimation function for Shannon's index. Internal use in
  \code{\link{WYht}}. Calculates Shannon-Wiener index with bias correction
  \deqn{\widehat{HBC}_{ij} = \hat{H}_{ij} + (S_{ij} -1)/(2N_{ij}) -
    (1-\sum_{s=1}^{S}(1/\hat{p}_{ijs}))/(12N_{ij}^2) -
    \sum_{s=1}^{S}((1/\hat{p}_{ijs})-(1/(\hat{p}_{ijs}^2)))/(12N_{ij}^3);}

  \deqn{\hat{H}_{ij}=(-1)\sum_{s=1}^{S}(\hat{p}_{ijs} log(\hat{p}_{ijs}))}

  \eqn{i=1,...,k;j=1,...,n;s=1,...,S;}

  \eqn{S_j = } Number of observed species in replicate \eqn{j};

  \eqn{N_j= } Number of observed individuals in replicate \eqn{j}

  for every row in a \eqn{n \times p} matrix.
}
\usage{
estShannonWY(x)
}
\arguments{
  \item{x}{
    Vector of \eqn{p} numerical species counts.
}
}
\value{
  Shannon-Wiener index with bias correction
}
\keyword{ misc }
