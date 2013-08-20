\name{estShannonf}
\alias{estShannonf}
\title{
  Estimator for Shannon's index odered by a factorial variable f.
}
\description{
  Estimation function for Shannon's index. Internal use in
  \code{\link{sbdiv}} for methods \code{\link{rpht}}, \code{\link{tsht}},
  \code{\link{asht}}. Sums up species counts in each columns for every
  treatment group and estimates Shannon's index with bias correction on
  the resulting vectors of summed up species counts.
  \deqn{\widehat{HBC}_{i} = \hat{H}_{i} + (S_i -1)/(2N_{i\bullet}) -
    (1-\sum(1/\hat{p}_{i\bullet s}))/(12N_{i\bullet}^2) -
    \sum((1/\hat{p}_{i\bullet s})-(1/(\hat{p}_{i\bullet
	s}^2)))/(12N_{i\bullet}^3);}

  \eqn{i=1,...,k;s=1,...,S;p_{i \bullet
      s}=\frac{\sum_{j=1}^{n}x_{sj}}{N_{i\bullet}}};

  \deqn{\hat{H}_i=(-1)\sum_{s=1}^{S}(\hat{p}_{i \bullet s} log(\hat{p}_{i \bullet s}))}

  \eqn{N_{i\bullet}= \sum_{j=1}^{n}N_{ij}} Number of observed individuals in treatment \eqn{i}.
}
\usage{
estShannonf(X, f)
}
\arguments{
  \item{X}{
    \eqn{n} times \eqn{p} matrix containing species in \eqn{p} columns and replicates in \eqn{n} rows.
}
  \item{f}{
    Factor variable containing treatment groups. Must be of length: replicates
    times treatment groups.
  }
}
\value{
  \item{ estimate }{Estimated Shannon-Wiener index for treatment groups}
  \item{ varest }{Estimated variance of Shannon-Wiener index for
    treatment groups}
}
\keyword{ misc }
