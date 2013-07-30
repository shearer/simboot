\name{sbdiv}
\alias{sbdiv}
\title{
  Perform simultaneous confidence intervals or adjusted p--values
  for the Shannon and the Simpson index.
}
\description{
  Function \code{sbdiv} estimates simultaneous confidence intervals for the
  Shannon or the Simpson index. This function provides calculation of
  several pre--defined contrasts for confidence intervals.Further
  self-defined contrast are applicable. Simultaneous resampling confidence
  intervals are estimated according to the Algorithm of Besag et
  al. (1995) using method \code{\link{rpht}}, Westfall et al. (1993) using
  method \code{\link{WYht}} or similar to Beran (1988) using method
  \code{\link{tsht}}. Further estimation of simultaneous asymptotic
  intervals adjusting for heterogeneous variances is provided by method
  \code{\link{asht}} according to Fritsch and Hsu (1999) and Rogers and
  Hsu (2001). However, estimation of asymptotic intervals may make
  no sense in data sets with replicated samples due to overdispersion.
}
\usage{
sbdiv(X, f, theta = c("Shannon", "Simpson"), type = c("Dunnett",
"Tukey", "Sequen", "AVE", "Changepoint", "Williams", "Marcus", "McDermott", "UmbrellaWilliams", "GrandMean"), cmat = NULL, method = c("WYht", "tsht", "rpht", "asht"), conf.level =
0.95, alternative = c("two.sided", "less", "greater"), R = 2000, base =
1, ...)
}
\arguments{
  \item{X}{
    Data frame containing numerical values for counts in columns. Every
    column represents on species.
  }
  \item{f}{
    Vector of factorial variables for treatment groups. Vector length
    must be equal to the length of treatment groups multiplicated with
    sample replications.
  }
  \item{theta}{
    Biodiversity index. Options are Shannon and Simpson index.
  }
  \item{type}{
    Type of comparison. Options are Dunnett, Tukey, Sequen, AVE,
    Changepoint, Williams, Marcus, McDermott, UmbrellaWilliams,
    GrandMean intervals. We tested only Dunnett and Tukey contrasts in
    simulations.
  }
  \item{cmat}{
    Optional self-defined contrast matrix. In case of using this
    argument, the type argument is not considered.
  }
  \item{method}{
    Possible methods are simultaneous bootstrap confidence intervals:
    \code{\link{WYht}}, \code{\link{tsht}}, \code{\link{rpht}} and asymptotic
    simultaneous confidence intervals: \code{\link{asht}}. Adjusted and
    unadjusted \eqn{p}--values are estimated with method
    \code{\link{WYht}} and method \code{\link{tsht}}.
  }
  \item{conf.level}{
    Pre-defined overall confidence level. Default is 0.95, while
    two-sided inference is estimated with \eqn{(1-conf.level)/2} for
    each side and one-sided inference is estimated with
    \eqn{1-conf.level} for the side of interest.
  }
  \item{alternative}{
    Specified type of interval. Could be "one-sided" or "two.sided".
  }
  \item{R}{
    Number of bootstrap steps. Default is 2000, which is a good
    compromise between accuracy and computing time
  }
  \item{base}{
    Control group. base = 1 uses the first group in alphabetical order.
  }
  \item{\dots}{
    Further optional arguments for the internal used function \code{boot} from
    package \pkg{boot}. Most importantly, the number of Bootstrap samples can
    be chosen via the parameter \code{R} (default is \code{R=2000}); see
    \code{?boot} for further options.
  }
}
\details{
  \code{sbdiv} is the main function for estimating the different
  multiplicity adjusted confidence intervals. Different methods are
  called from internal functions.
}
\value{
  \item{conf.int }{estimate: Estimated difference between groups. Estimators
    differ between the methods due to calculation. lower: Lower bounds
    of estimated intervals. upper: Upper bounds of estimated intervals.
  }
  \item{p.value }{adj. p: multiplicity adjusted p-values. raw p:
  unadjusted p-values}
  \item{conf.level }{Pre-specified confidence level}
  \item{alternative }{Pre-specified alternative}
}
\references{
  Westfall, P. H. and Young, S. S. (1993) Resampling-Based
    Multiple Testing: Examples and Methods for \eqn{p}--Value
    Adjustment. New York: Wiley.

  Corresponding method \code{sbdiv} with method \code{\link{WYht}}

  Besag, J., Green, P. J., Higdon, D., Mengersen, K. (1995)
  Bayesian computation and stochastic systems (with discussion)
  . \emph{Statistical Science}, 10, 3--66.

  Corresponding method \code{sbdiv} with method \code{\link{rpht}}

  Beran, R. (1988) Balanced simultaneous confidence
    sets. \emph{Journal of the American Statistical Association}, 83, 679--686.

   Corresponding method \code{sbdiv} with method \code{\link{tsht}}

  Fritsch, K. S., Hsu, J. C. (1999) Multiple comparison of
    entropies with application to dinosaur biodiversity. \emph{Biometrics},
  55, 4, 1300--1305.

  Rogers, J. A., Hsu, J. C. (2001) Multiple comparisons of
    biodiversity. \emph{Biometrical Journal}, 43, 5, 617--625.

  Corresponding method \code{sbdiv} with method \code{\link{asht}}

  Scherer, R. (2010) Simultaneous Confidence Intervals for Biodiversity
    Indices with Application to Overdispersed Multinomial Count Data
  \url{http://www.biostat.uni-hannover.de/thesis.html}
}
\author{
Ralph Scherer
}
\examples{
## For plots of the datasets see the help files for the data sets.

## First dataset
data(predatGM)

## structure of data
str(predatGM)

## remove block variable
datspec_1 <- predatGM[, -1]
str(datspec_1)

## Order of factorial variable
datspec_1$Variety

## argument base = 1 uses GM as control group. Not directly executable
## due to intensive computing time
# sbdiv(X = datspec_1[, 2:length(datspec_1)], f = datspec_1[, 1], theta =
# "Shannon", type = "Dunnett", method = "WYht", conf.level = 0.95,
# alternative = "two.sided", R = 2000, base = 1)

## Directly executable but senseless value for boot steps R
sbdiv(X = datspec_1[, 2:length(datspec_1)], f = datspec_1[, 1], theta =
"Shannon", type = "Dunnett", method = "WYht", conf.level = 0.95,
alternative = "two.sided", R = 100, base = 1)


## Second dataset
data(saproDipGM)

## structure
str(saproDipGM)

## remove block variable
datspec_2 <- saproDipGM[, -1]
str(datspec_2)

## Order of factor variable
datspec_2$Variety

## argument base = 2 uses Ins as control group. Not directly executable
## due to intensive computing time
# sbdiv(X = datspec_2[, 2:length(datspec_2)], f = datspec_2[, 1], theta =
# "Shannon", type = "Dunnett", method = "rpht", conf.level = 0.95,
# alternative = "two.sided", R = 2000, base = 2)

## Directly executable but senseless value for boot steps R
sbdiv(X = datspec_2[, 2:length(datspec_2)], f = datspec_2[, 1], theta =
"Shannon", type = "Dunnett", method = "rpht", conf.level = 0.95,
alternative = "two.sided", R = 100, base = 2)

}
\keyword{ htest }
\concept{ simultaneous confidence interval }
\concept{ bootstrap }
\concept{ biodiversity }
\concept{ multiple comparisons }

