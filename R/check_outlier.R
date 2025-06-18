check_outlier <- function(x) {
  res <- forecast::tsoutliers(x, iterate = 2, lambda = NULL)
  res <- res$index

  if (length(res) > 0) {
    result <- list(
      test = "outlier",
      flag = "yellow",
      message = glue::glue(
        "{length(res)} possible outlier(s) detected on the following positions: {paste(res, collapse = ',')}"
      )
    )
  } else {
    result <- list(
      test = "outlier",
      flag = "green",
      message = "No outliers detected"
    )
  }
}
