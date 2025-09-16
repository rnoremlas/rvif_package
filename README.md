# rvif_package

This repository has been created to control the rvif package. The objective of this package is to detect multicollinearity using the variance inflation factor redefined and the scatterplot between the variance inflation factor and the coefficient of variation.

Previous versions: 1.0 and 3.0

> Version 1:

    Contains the functions "CV_VIF.R" and "RVIF.R"

> Changes from version 1.0 to 2.0:

    The function "Theorem.R" and data sets are added.

> Changes from version 2.0 to 3.0:

    Function names and arguments have been renamed and revised to improve usability. This package website has been added for easier access to documentation. A dedicated package homepage has been created, unit tests have been implemented for all functions and a vignette has been included to guide users in applying the package.

> Changes from version 3.0 to 3.1:

    Errors detected in the tests have been corrected.

> Current version: 3.1

## Instalation

You can install the stable version from CRAN (recommended):

> install.packages("rvif", dependencies = TRUE)

You can install the development version from Github:

> install.packages("remotes")
> 
> remotes::install_github("rnoremlas/rvif")

## Usage

## For more information

- Salmerón R., García C.B. and García J. (2018). Variance Inflation Factor and Condition Number in multiple linear regression. Journal of Statistical Computation and Simulation, 88 (12), 2365-2384, <doi: [10.1080/00949655.2018.1463376](https://doi.org/10.1080/00949655.2018.1463376)>.
- Salmerón, R., Rodríguez, A. and García C. (2020). Diagnosis and quantification of the non-essential collinearity. Computational Statistics, 35, 647-666, <doi: [10.1007/s00180-019-00922-x](https://doi.org/10.1007/s00180-019-00922-x)>.
- Salmerón, R., García, C.B, Rodríguez, A. and García, C. (2022). Limitations in detecting multicollinearity due to scaling issues in the mcvis package. The R Journal, 14 (4), 264-279, <doi: [10.32614/RJ-2023-010](https://journal.r-project.org/articles/RJ-2023-010/)>.
- Salmerón, R., García, C.B. and García, J. (2025). A Redefined Variance Inflation Factor: overcoming the limitations of the Variance Inflation Factor. Computational Economics, 65, 337-363, <doi: [10.1007/s10614-024-10575-8](https://doi.org/10.1007/s10614-024-10575-8)>.
- Salmerón, R., García, C.B, García J. (2023, working paper). Overcoming the inconsistences of the variance inflation factor: a redefined VIF and a test to detect statistical troubling multicollinearity. ArXiv, <doi: [10.48550/arXiv.2005.02245](https://arxiv.org/abs/2005.02245)>.
- The package vignette using 'browseVignettes("rvif")'.
- The package website using 'browseURL(system.file("docs/index.html", package = "rvif"))'.

## License

This package is free and open source software, licensed under GPL-3.
