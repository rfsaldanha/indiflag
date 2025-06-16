test_that("basic_checks works", {
  example <- tibble::tibble(
    id = c(1, 1, 1, 1, 1, 1, 1, 1, 1),
    date = rep(
      seq(as.Date("2023-01-01"), as.Date("2023-01-03"), by = "day"),
      3
    ),
    name = c(rep("indi_01", 3), rep("indi_02", 3), rep("indi_03", 3)),
    value = c(1.15, 3.4, 5, -3.23, NA, -3, 2, 2, 2)
  )

  example |>
    basic_checks(keys = c(id, name), value_var = value)

  example |>
    range_checks(
      keys = c(id, name),
      name_var = name,
      name = "indi_02",
      value_var = value,
      v_min = 0,
      v_max = 100
    )
})
