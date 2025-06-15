check_negative <- function(x) {
  res <- na.omit(x < 0)

  if (any(res)) {
    result <- list(
      test = "negative",
      flag = "red",
      message = glue::glue("{sum(res)} negative value(s)")
    )
  } else {
    result <- list(
      test = "negative",
      flag = "green",
      message = "There is no negative values"
    )
  }

  return(result)
}
