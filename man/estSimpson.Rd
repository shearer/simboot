\name{estSimpson}
\alias{estSimpson}
\title{
  Estimator for Simpson's index
}
\description{
  Estimation function for Simpson's index \eqn{1-p^2 * n/(n-1)}. Internal use in
  \code{\link{estSimpsonf}}.
}
\usage{
estSimpson(x)
}
\arguments{
  \item{x}{
    Vector of discrete-scaled numerical values.
  }
}
\value{
  Estimator of Simpson's index
}
\keyword{ misc }
