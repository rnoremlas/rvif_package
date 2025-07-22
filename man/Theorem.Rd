\encoding{utf8} % \encoding{latin1}
\name{Theorem}
\alias{Theorem}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Theorem
}
\description{
Given a multiple linear regression model with n observations and k independent variables, the degree of
near-multicollinearity affects its statistical analysis (with a level of significance of afa\%) 
if there is a variable i, with i = 1,...,k, that verifies that the null hypothesis is not rejected in the 
original model and is rejected in the orthogonal model of reference.
}
\usage{
Theorem(y, X, alfa = 0.05)
}
\arguments{
  \item{y}{A numerical vector representing the dependent variable of the model.}
  \item{X}{A numerical design matrix that should contain more than one regressor (intercept included).}
  \item{alfa}{Level of significance (by default, 5\%).}
}
\details{
This function compares the individual inference of the original model with that of the orthonormal model taken as reference. 

Thus, if the null hypothesis is rejected in the individual significance tests in the model where there are no linear relationships between the independent variables (orthonormal) and is not rejected in the original model, the reason for the non-rejection is due to the existing linear relationships between the independent variables (multicollinearity) of the original model.

The second model is obtained from the first model by performing a QR decomposition which allows to eliminate the initial linear relationships.
}
\value{
The function returns the value of the RVIF, the thresholds established as worroying and whether or not the individual significance analysis is affected by multicollinearity (at the significance level used).
}
\author{
  Román Salmerón Gómez (University of Granada) and Catalina García García (University of Granada).

  Maintainer: Román Salmerón Gómez (romansg@ugr.es)
}
\references{
Salmerón, R., García, C.B. and García, J. A redefined Variance Inflation Factor: overcoming the limitations of the Variance Inflation Factor. Computational Economics (2024, online), doi: https://doi.org/10.1007/s10614-024-10575-8.

Overcoming the inconsistences of the variance inflation factor: a redefined VIF and a test to detect statistical troubling multicollinearity by Salmerón, R., García, C.B and García, J. (working paper, https://arxiv.org/pdf/2005.02245).
}
\seealso{\code{\link{RVIF}}}
\examples{
## Example 1
set.seed(2024)
obs = 100
cte = rep(1, obs)
x2 = rnorm(obs, 5, 0.01)  # related to intercept: non essential
x3 = rnorm(obs, 5, 10)
x4 = x3 + rnorm(obs, 5, 0.5) # related to x3: essential
x5 = rnorm(obs, -1, 3)
x6 = rnorm(obs, 15, 0.5)
y = 4 + 5*x2 - 9*x3 -2*x4 + 2*x5 + 7*x6 + rnorm(obs, 0, 2)
X = cbind(cte, x2, x3, x4, x5, x6)
Theorem(y, X)

## Example 2
obs = 25 # by decreasing the number of observations affected to x4 
cte = rep(1, obs)
x2 = rnorm(obs, 5, 0.01)  # related to intercept: non essential
x3 = rnorm(obs, 5, 10)
x4 = x3 + rnorm(obs, 5, 0.5) # related to x3: essential
x5 = rnorm(obs, -1, 3)
x6 = rnorm(obs, 15, 0.5)
y = 4 + 5*x2 - 9*x3 -2*x4 + 2*x5 + 7*x6 + rnorm(obs, 0, 2)
X = cbind(cte, x2, x3, x4, x5, x6)
Theorem(y, X)

## Example 3
y = 4 - 9*x3 - 2*x5 + rnorm(obs, 0, 2)
X = cbind(cte, x3, x5) # independently generated
Theorem(y, X)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
\keyword{Variance inflation factor redefined}% use one of  RShowDoc("KEYWORDS")
\keyword{Individual significance tests}% __ONLY ONE__ keyword per line
\keyword{Orthonormal model}

