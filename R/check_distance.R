check_distance <- function(x, y) {
  res <- philentropy::jaccard(P = x, Q = y, testNA = FALSE)

  if (res < .1) {
    result <- list(
      test = "distance",
      flag = "red",
      message = glue::glue(
        "Distance is too low: {res}"
      )
    )
  } else {
    result <- list(
      test = "distance",
      flag = "green",
      message = "Distance is acceptable"
    )
  }

  return(result)
}
