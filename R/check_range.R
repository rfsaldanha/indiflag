check_range <- function(x, v_min, v_max) {
  res <- na.omit(x) < v_min | na.omit(x) > v_max

  if (any(res)) {
    result <- list(
      test = "range",
      flag = "red",
      message = glue::glue(
        "{sum(res)} value(s) outside range"
      )
    )
  } else {
    result <- list(
      test = "range",
      flag = "green",
      message = "There is no value outside range"
    )
  }

  return(result)
}
