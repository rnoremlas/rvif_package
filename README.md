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

- Salmerón R., García C.B. and García J. (2018) <doi:10.1080/00949655.2018.1463376>.
- Salmerón, R., Rodríguez, A. and García C. (2020) <doi:10.1007/s00180-019-00922-x>.
- Salmerón, R., García, C.B, Rodríguez, A. and García, C. (2022) <doi:10.32614/RJ-2023-010>.
- Salmerón, R., García, C.B. and García, J. (2025) <doi:10.1007/s10614-024-10575-8>.
- Salmerón, R., García, C.B, García J. (2023, working paper) <doi:10.48550/arXiv.2005.02245>.
- The package vignette using 'browseVignettes("rvif")'.
- The package website using 'browseURL(system.file("docs/index.html", package = "rvif"))'.

## License

This package is free and open source software, licensed under GPL-3.
