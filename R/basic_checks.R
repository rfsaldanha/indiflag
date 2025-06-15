basic_checks <- function(x, keys, value_var) {
  x |>
    dplyr::summarise(
      .by = {{ keys }},
      tests = list(
        check_variance(x = {{ value_var }}),
        check_na(x = {{ value_var }}),
        check_sequence(x = {{ value_var }}),
        check_negative(x = {{ value_var }}),
        check_entropy(x = {{ value_var }})
      )
    ) |>
    tidyr::unnest_wider(tests)
}
