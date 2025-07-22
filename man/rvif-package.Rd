\encoding{utf8} % \encoding{latin1}
\name{rvif-package}
\alias{rvif-package}
\alias{rvif}
\docType{package}
\title{
  Multicollinearity detection using RVIF and graphical methods
}
\description{
The detection of troubling near multicollinearity in a multiple linear regression model is a classical problem in Econometrics. The purpose of this package is to detect it by using the Redefined Variance Inflation Factor (RVIF) and the scatterplot between the Variance Inflation Factor (VIF) and the Coefficient of Variation (CV).

In addition, the RVIF is used to determine whether the statistical analysis of the model is affected by the degree of multicollinearity of the model.
}
\details{
This package contains three functions. The first, CV_VIF, returns the values of the Variance Inflation Factor (VIF) and the Coefficient of Variation (CV), as well as their representation in a scatterplot. Taking into account that the VIF is useful for detecting essential multicollinearity and the CV is useful for detecting non-essential multicollinearity, the scatterplot of both measures can provide interesting information for determining whether there is a troubling degree of multicollinearity, what kind of multicollinearity it is and what variables are causing the multicollinearity.

On the other hand, the funcion RVIF calculates the redefined VIF, the percentage of near multicollinearity due to each independent variable and, using the above function, the scatterplot between the CV and VIF.

Finally, Theorem determines whether the degree of multicollinearity in the regression model affects the statistical analysis of the model, i.e., whether the non-rejection of the null hypothesis in the individual significance tests is due to the linear relationships between the independent variables of the model. 
}
\author{
  Román Salmerón Gómez (University of Granada) and Catalina García García (University of Granada).

  Maintainer: Román Salmerón Gómez (romansg@ugr.es)
}
\references{
R. Salmerón, C. García, and J. García. Variance inflation factor and condition number in multiple linear
regression. Journal of Statistical Computation and Simulation, 88:2365-2384, 2018.

R. Salmerón, A. Rodríguez, and C. García. Diagnosis and quantification of the non-essential collinearity.
Computational Statistics, 35:647-666, 2020.

Salmerón, R., García, C.B., Rodríguez, A. and García, C. Limitations in detecting multicollinearity due to scaling issues in the mcvis package. R Journal, 14(4), 264-279, 2022.

Salmerón, R., García, C.B. and García, J. A redefined Variance Inflation Factor: overcoming the limitations of the Variance Inflation Factor. Computational Economics (2024, online), doi: https://doi.org/10.1007/s10614-024-10575-8.

Overcoming the inconsistences of the variance inflation factor: a redefined VIF and a test to detect statistical troubling multicollinearity by Salmerón, R., García, C.B and García, J. (working paper, https://arxiv.org/pdf/2005.02245).
}

\keyword{Variation Inflation Factor Redefined}
\keyword{Variation Inflation Factor}
\keyword{Coefficient of Variation}

