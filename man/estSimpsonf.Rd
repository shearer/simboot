\name{estSimpsonf}
\alias{estSimpsonf}
\title{
  Estimator for Simpson's index odered by a factorial variable f.
}
\description{
  Estimation function for Simpson's index. Internal use in
  \code{\link{sbdiv}} for methods \code{\link{rpht}}, \code{\link{tsht}},
  \code{\link{asht}}. Sums up species counts in each columns for every
  treatment group and estimates Simpson's index on the resulting vectors
  of summed up species counts.
}
\usage{
estSimpsonf(X, f)
}
\arguments{
  \item{X}{
    \eqn{n} times \eqn{p} matrix containing species in \eqn{p} columns
    and replicates in \eqn{n}rows.}
  \item{f}{
    Factor variable comtaining treatment groups. Must be of length: replicates
    times treatment groups.
  }
}
\value{
  \item{ estimate }{Estimated Simpson index for treatment groups}
  \item{ varest }{Estimated variance of Simpson's index for
    treatment groups}
}
\keyword{ misc }
