library(testthat)
library(devtools)
library(remotes)

rm(list = ls()) # clear your environment

# make a function
mean_range <- function(df) {
  
  col_means <- apply(X = df, MARGIN = 2, FUN = mean, rm.na = TRUE)   # Returns column means as a vector
  col_mean_max <- max(col_means)   # Looks for the maximum value in the vector
  col_mean_min <- min(col_means)   # Looks for the minimum value in the vector
  
  return(c(col_mean_min, col_mean_max))   # Prints the vector with minimum & maximum
}

#  Try it out:
mean_range(mtcars)

# create some tests with test that:
expect_length(mean_range(mtcars), 2)  # our function should return a vector with length 2
expect_true(mean_range(mtcars)[1] < mean_range(mtcars)[2])   # our function should return a vector where the first value is less than the second











