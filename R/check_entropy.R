check_entropy <- function(x) {
  # Frequence table
  freqs <- table(x)

  # Shannon entropy
  res <- round(-sum(freqs * log2(freqs), na.rm = TRUE), 2)

  if (res >= .9) {
    result <- list(
      test = "entropy",
      flag = "red",
      message = glue::glue("The entropy is too high: {res}")
    )
  } else if (res >= .8 & res < 9) {
    result <- list(
      test = "entropy",
      flag = "yellow",
      message = glue::glue("The entropy is high: {res}")
    )
  } else if (res <= .1) {
    result <- list(
      test = "entropy",
      flag = "red",
      message = glue::glue("The entropy is too low: {res}")
    )
  } else if (res > .1 & res <= .2) {
    result <- list(
      test = "entropy",
      flag = "yellow",
      message = glue::glue("The entropy is low: {res}")
    )
  } else {
    result <- list(
      test = "entropy",
      flag = "green",
      message = "The entropy is {res}"
    )
  }

  return(result)
}
