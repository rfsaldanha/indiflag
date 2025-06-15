check_sequence <- function(x) {
  res <- rle(x)

  if (any(res$lengths >= 10)) {
    result <- list(
      test = "sequence",
      flag = "red",
      message = "There is at least one sequence of repeated values of size 10 or greater"
    )
  } else if (any(res$lengths >= 5)) {
    result <- list(
      test = "variance",
      flag = "yellow",
      message = "There is at least one sequence of repeated values of size 5 or greater"
    )
  } else {
    result <- list(
      test = "sequence",
      flag = "green",
      message = "There is no sequence of repeated values"
    )
  }

  return(result)
}
