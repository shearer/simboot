\name{simboot-package}
\alias{simboot-package}
\alias{simboot}
\docType{package}
\title{
  Simultaneous inference for diversity indices.
}
\description{
  Package \pkg{simboot} provides estimation of simultaneous bootstrap and
  asymptotic confidence intervals for diversity indices, namely the
  Shannon and the Simpson index. Several pre-specified
  multiple-comparison types are available. Further user-defined
  contrast matrices are applicable. In addition, \pkg{simboot} estimates
  adjusted as well as unadjusted \eqn{p}--values for two of the three
  proposed bootstrap methods. Further simboot allows for comparing
  biological diversities of two or more groups with simultaneously
  testing a user-defined selection of Hill numbers of orders q, which
  are considered appropriate and useful indices for measuring diversity.
}
\details{
\tabular{ll}{
  Package: \tab simboot\cr
  Type: \tab Package\cr
  Version: \tab 0.2-4\cr
  Date: \tab 2013-08-13\cr
  License: \tab GPL (>= 2)\cr
  LazyLoad: \tab yes\cr
}
}
\author{
  Ralph Scherer\\
  Philip Pallmann\\
  Maintainer: Ralph Scherer <scherer.ralph@mh-hannover.de>
}
\references{
  Scherer, R. and Schaarschmidt, F. (2013) Simultaneous confidence intervals
  for comparing biodiversity indices estimated from overdispersed count
  data. \emph{Biometrical Journal} 55, 246--263.
  
  Evaluation of the methods in \code{\link{sbdiv}}
  
  Pallmann, P. et al. (2012) Assessing group differences in
  biodiversity by simultaneously testing a user-defined selection of
  diversity indices. \emph{Molecular ecology resources} 12, 1068--??78.

  Evaluation of the methods in \code{\link{mcpHill}}
  
  Westfall, P. H. and Young, S. S. (1993) Resampling-Based
    Multiple Testing: Examples and Methods for \eqn{p}--Value
    Adjustment. New York: Wiley.

  Corresponding method \code{\link{sbdiv}} with method \code{\link{WYht}}

  Besag, J., Green, P. J., Higdon, D., Mengersen, K. (1995)
  Bayesian computation and stochastic systems (with discussion)
  . \emph{Statistical Science}, 10, 3--66.

  Corresponding method \code{\link{sbdiv}} with method \code{\link{rpht}}

  Beran, R. (1988) Balanced simultaneous confidence
    sets. \emph{Journal of the American Statistical Association}, 83, 679--686.

   Corresponding method \code{\link{sbdiv}} with method \code{\link{tsht}}

  Fritsch, K. S., Hsu, J. C. (1999) Multiple comparison of
    entropies with application to dinosaur biodiversity. \emph{Biometrics},
  55, 4, 1300--1305.

  Rogers, J. A., Hsu, J. C. (2001) Multiple comparisons of
    biodiversity. \emph{Biometrical Journal}, 43, 5, 617--625.

  Corresponding method \code{\link{sbdiv}} with method \code{\link{asht}}

  Jost, L. (2008) G(ST) and its relatives do not measure
  differentiation. \emph{Molecular Ecology}, 17, 4015-4026.

  Corresponding method \code{\link{mcpHill}}
  }
\keyword{ htest, nonparametric, multivariate }
