\encoding{utf8}
\name{CDpf}
\alias{CDpf}
\docType{data}
\title{Cobb-Douglas data}
\description{
Data used in Example 2 of Salmerón, García and García (2024) (sub-section 4.2) on data for the Cobb-Douglas production function.
}
\usage{data("CDpf")}
\format{
  A data frame with 28 observations on the following 4 variables:
  \describe{
    \item{\code{P}}{Production (dependent variable).}
    \item{\code{cte}}{Intercept.}
    \item{\code{logK}}{Capital (in logarithm).}
    \item{\code{logW}}{Work (in logarithm).}
  }
}
\details{
This dataset is originally used by Olva Maldonado (2009).
}
\references{
Olva Maldonado, H. Análisis de la función de producción Cobb-Douglas y su aplicación en el sector productivo mexicano.
Tesis, Universidad Autónoma de Chapingo, 2009.

Salmerón, R., García, C.B. and García, J. A redefined Variance Inflation Factor: overcoming the 
limitations of the Variance Inflation Factor. Computational Economics (2024, online), doi: https://doi.org/10.1007/s10614-024-10575-8.
}
\examples{
data(CDpf)
head(CDpf, n=5)
y = CDpf[,1]
X = as.matrix(CDpf[,2:4])
Theorem(y, X)
}
\keyword{datasets}
