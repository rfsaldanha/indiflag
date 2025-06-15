check_na <- function(x) {
  res <- is.na(x)

  if (all(res)) {
    result <- list(
      test = "na",
      flag = "red",
      message = "All values are NAs"
    )
  } else if (any(res)) {
    result <- list(
      test = "na",
      flag = "yellow",
      message = glue::glue("{sum(res)} NA value(s)")
    )
  } else {
    result <- list(
      test = "na",
      flag = "green",
      message = "NAs were not found"
    )
  }

  return(result)
}
