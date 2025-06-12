check_variance <- function(x) {
  res <- stats::var(x, na.rm = TRUE)

  if (is.na(res)) {
    result <- list(
      test = "variance",
      flag = "white",
      message = "It was not possible to determine the variance."
    )
  } else if (res == 0) {
    result <- list(
      test = "variance",
      flag = "red",
      message = "Variance is zero"
    )
  } else {
    result <- list(
      test = "variance",
      flag = "green",
      message = "Variance is not zero"
    )
  }

  return(result)
}
