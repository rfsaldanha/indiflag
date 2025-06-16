range_checks <- function(x, keys, name_var, name, value_var, v_min, v_max) {
  x |>
    dplyr::filter({{ name_var }} == {{ name }}) |>
    dplyr::summarise(
      .by = {{ keys }},
      tests = list(
        check_range(x = {{ value_var }}, v_min = v_min, v_max = v_max)
      )
    ) |>
    tidyr::unnest_wider(tests)
}
