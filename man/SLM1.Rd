\encoding{utf8}
\name{SLM1}
\alias{SLM1}
\docType{data}
\title{
First simulated data for the simple linear regression model
}
\description{
First data used in example 4 of Salmerón, García and García (2024) (subsection 4.4) on special case of simple linear model.
}
\usage{data("SLM1")}
\format{
  A data frame with 50 observations on the following 3 variables:
  \describe{
    \item{\code{y1}}{Dependent variable simulated as y = 3 + 4*V + u with u is normally distributed with a mean equal to 0 and a variance equal to 2.}
    \item{\code{cte}}{Intercept.}
    \item{\code{V}}{Simulated from a normal distribution with mean equal to 10 and variance equal to 100.}
  }
}
\references{
Salmerón, R., García, C.B. and García, J. A redefined Variance Inflation Factor: overcoming the 
limitations of the Variance Inflation Factor. Computational Economics (2024, online), doi: https://doi.org/10.1007/s10614-024-10575-8.
}
\examples{
data(SLM1)
head(SLM1, n=5)
y = SLM1[,1]
X = as.matrix(SLM1[,2:3])
Theorem(y, X)
}
\keyword{datasets}
