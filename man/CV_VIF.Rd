\encoding{utf8} % \encoding{latin1}
\name{CV_VIF}
\alias{CV_VIF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  VIF, CV and a common scatter plot
}
\description{
This function provides the values for the Variance Inflation Factor (VIF) and the Coefficient of Variation (CV), as well as a common representation of both. 
}
\usage{
CV_VIF(X, size=NULL, top=82.64, limit=40, dummy=FALSE, pos=NULL, intercept=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{A numerical design matrix that should contain more than one regressor (including the intercept).}
  \item{size}{A numerical vector containing the percentage of multicollinearity due to each variable. By default \code{size=NULL}.}
  \item{top}{A real number that indicates the threshold from which the percentage of multicollinearity due to each variable is considered troubling.   By default \code{top=82.64}.}
  \item{limit}{A real number that indicates the lower limit of the vertical axis. By default \code{limit=40}.}
  \item{dummy}{A logical value that indicates if there are dummy variables in the design matrix \code{X}. By default \code{dummy=FALSE}.}
  \item{pos}{A numerical vector indicating the position of the dummy variables, if any, in the design matrix \code{X}. By default \code{pos=NULL}.}
  \item{intercept}{A logical value used only by the function RVIF. By default \code{intercept=TRUE}.}
}
\details{
It is interesting to note the distinction between essential (near-linear relationship between at least two independent variables excluding the intercept) and non-essential multicollinearity (near-linear relationship between the intercept and at least one of the remaining independent variables), due to the VIF is not an appropriate measure to detect non-essential collinearity (only detects essential collinearity), while the CV is useful to detect only non-essential collinearity.
  
  Then, this distinction between essential and non-essential multicollinearity and the limitations of each measure for detecting the different kinds of multicollinearity, can be very useful to detect if there is a troubling degree of multicollinearity, what kind of multicollinearity it is and what variables are causing the multicollinearity.
  
For this purpose, it is important to include in the figures the lines corresponding to the established thresholds for each
measure (CV and VIF): dashed vertical line for 0.1002506 (CV) and dotted horizontal line for 10 (VIF). These
lines determine four regions (see Example 1) which can be interpreted as follows: A, existence of troubling non-essential
and non-troubling essential multicollinearity; B, existence of troubling essential and non-essential
multicollinearity; C, existence of non-troubling non-essential and troubling essential multicollinearity;
D: non-troubling degree of existing multicollinearity (essential and non-essential).
}
\value{
  \item{CV}{Coefficient of Variation of each independent variable.}
  \item{VIF}{Variance Inflation Factor of each independent variable.}
}
\references{
R. Salmerón, C. García, and J. García. Variance inflation factor and condition number in multiple linear
regression. Journal of Statistical Computation and Simulation, 88:2365-2384, 2018.

R. Salmerón, A. Rodríguez, and C. García. Diagnosis and quantification of the non-essential collinearity.
Computational Statistics, 35:647-666, 2020.

Salmerón, R., García, C.B., Rodríguez, A. and García, C. Limitations in detecting multicollinearity due to scaling issues in the mcvis package. R Journal, 14(4), 264-279, 2022.
}
\author{R. Salmerón (\email{romansg@ugr.es}) and C. García (\email{cbgarcia@ugr.es}).}

\examples{
## Example 1
plot(-2:20, -2:20, type = "n", xlab="Coefficient of Variation", ylab="Variance Inflation Factor")
abline(h=10, col="black", lwd=3, lty=2)
abline(v=0.1002506, col="black", lwd=3, lty=3)
text(-1.25, 2, "A", pos=3, col="red")
text(-1.25, 12, "B", pos=3, col="red")
text(10, 12, "C", pos=3, col="red")
text(10, 2, "D", pos=3, col="red")

## Example 2
library(multiColl)
set.seed(2022)
obs = 100
cte = rep(1, obs)
x2 = rnorm(obs, 5, 0.01)
x3 = rnorm(obs, 5, 10)
x4 = x3 + rnorm(obs, 5, 1)
x5 = rnorm(obs, -1, 30)
x = cbind(cte, x2, x3, x4, x5)
CV_VIF(x, size = c(1, 1, 1, 1))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Variance inflation factor}% use one of  RShowDoc("KEYWORDS")
\keyword{Coefficient of Variation}% __ONLY ONE__ keyword per line
\keyword{Scatter plot}
