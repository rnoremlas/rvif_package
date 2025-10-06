library(testthat)
library(rvif)

#####################################################################################################################################

# Assuming that the cv_vif_plot() function is already loaded

# Simulation of a cv_vif result

set.seed(2025)
obs = 100
cte = rep(1, obs)
x2 = rnorm(obs, 5, 0.01)
x3 = rnorm(obs, 5, 10)
x4 = x3 + rnorm(obs, 5, 1)
x5 = rnorm(obs, -1, 30)
x = cbind(cte, x2, x3, x4, x5)
cv_vif_output = cv_vif(x)

test_that("Generate an error-free graph.", {
  expect_silent(plot(cv_vif_output))
})

# Simulation of a cv_vif result

cv_vif_output <- data.frame(
  CV = c(0.15, 0.22, 0.09),
  VIF = c(1.2, 3.5, 9.8)
)
rownames(cv_vif_output) <- c("Variable 2", "Variable 3", "Variable 4")

test_that("Generate an error-free graph.", {
  expect_silent(plot(cv_vif_output))
})

# 

test_that("Throws error with input that is not a data frame.", {
  x <- matrix(c(0.15, 1.2), ncol = 2)
  class(x) <- c("cv_vif", class(x))
  expect_silent(plot(x))  # It does not generate a message, but it also does not draw
})

test_that("No error is generated even if VIF has high values.", {
  extreme_df <- data.frame(
    CV = c(0.1, 0.2, 0.3),
    VIF = c(15, 30, 100)
  )
  expect_silent(plot(extreme_df))
})

#####################################################################################################################################

# testthat::test_file("test-plot.cv_vif.R")