\name{estShannon}
\alias{estShannon}
\title{
  Estimator for Shannon's index
}
\description{
  Estimation function for Shannon's index. Internal use in
  \code{\link{estShannonf}}.
}
\usage{
estShannon(x)
}
\arguments{
  \item{x}{
    Vector of discrete-scaled numerical values.
}
}
\details{
  Estimator of Shannon-Wiener index with bias correction. Number of
  Species S in the bias correction does not take zeros into account.
}
\value{
  Shannon-Wiener index with bias correction
}
\keyword{ misc }
