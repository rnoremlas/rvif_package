\encoding{utf8}
\name{SLM2}
\alias{SLM2}
\docType{data}
\title{
Second simulated data for the simple linear regression model
}
\description{
Second data used in example 4 of Salmerón, García and García (2024)  (subsection 4.4) on special case of simple linear model.
}
\usage{data("SLM2")}
\format{
  A data frame with 50 observations on the following 3 variables:
  \describe{
    \item{\code{y2}}{Dependent variable simulated as y = 3 + 4*Z + u where u is normally distributed with a mean equal to 0 and a variance equal to 2.}
    \item{\code{cte}}{Intercept.}
    \item{\code{Z}}{Simulated from a normal distribution with mean equal to 10 and variance equal to 0.1.}
  }
}
\references{
Salmerón, R., García, C.B. and García, J. A redefined Variance Inflation Factor: overcoming the 
limitations of the Variance Inflation Factor. Computational Economics (2024, online), doi: https://doi.org/10.1007/s10614-024-10575-8.
}
\examples{
data(SLM2)
head(SLM2, n=5)
y = SLM2[,1]
X = as.matrix(SLM2[,2:3])
Theorem(y, X)
}
\keyword{datasets}
