distance_checks <- function(x, keys, name_var, name, value_var) {
  keys = rlang::parse_exprs(keys)

  x_list <- x |>
    dplyr::group_by(!!!keys) |>
    dplyr::group_split()

  combinations <- t(utils::combn(x = length(x_list), m = 2))

  return(combinations)
}
