library(testthat)
library(rvif)

#####################################################################################################################################

# Assuming that the rvifs() function is already loaded

test_that("Throws message if there are less than 2 variables.", {
  set.seed(2025)
  x <- matrix(rnorm(10), ncol = 1)
  expect_message(rvifs(x, intercept = FALSE), 
                 regexp = "At least 2 independent variables", ignore.case = TRUE)
})

test_that("Detects constant variable when intercept=TRUE.", {
  set.seed(2025)
  x <- cbind(1, rnorm(10), rep(5, 10))  # third column constant
  msgs <- capture.output(rvifs(x, intercept = TRUE), type = "message")
  expect_true(any(grepl("here is a constant variable", msgs, ignore.case = TRUE)))
})

test_that("Detects constant variable when intercept=FALSE.", {
  set.seed(2025)
  x <- cbind(rnorm(10), rep(3, 10))  # second column constant
  expect_message(rvifs(x, intercept = FALSE), 
                 regexp = "There is a constant variable", ignore.case = TRUE)
})

test_that("Detects perfect multicollinearity.", {
  set.seed(2025)
  x1 <- rnorm(10)
  x2 <- x1 * 2
  x <- cbind(1, x1, x2)
  expect_message(rvifs(x), regexp = "Modify the design matrix", ignore.case = TRUE)
})

test_that("Detects near-singular system.", {
  set.seed(2025)
  x1 <- rnorm(10)
  x2 <- x1 + 1e-5
  x <- cbind(1, x1, x2)
  expect_message(rvifs(x, tol = 1e-3), regexp = "Modify the design matrix", ignore.case = TRUE)
})

test_that("Returns data.frame with RVIF and % columns", {
  set.seed(2025)
  x <- cbind(1, rnorm(50), rnorm(50))
  result <- rvifs(x)
  
  expect_s3_class(result, "data.frame")
  expect_named(result, c("RVIF", "%"))
  expect_equal(nrow(result), 3)
})

test_that("Works with ul = FALSE", {
  set.seed(2025)
  x <- cbind(1, rnorm(30), rnorm(30))
  result <- rvifs(x, ul = FALSE)
  expect_s3_class(result, "data.frame")
})

#####################################################################################################################################

# testthat::test_file("test-rvifs.R")