#' Colors from The Expanse (WIP)
#'
#' @export
list(
  mcrn_yellow = "#f9d366",
  mcrn_red_1 = "#a45133",
  mcrn_red_2 = "#6d3621",
  mcrn_red_3 = "#371a11",
  un_blue = "#6592df",
  pk_yellow = "#d1a94d",
  pk_green = "#4c7648",
  tycho_red = "#d1362a",
  star_helix_blue = "#12223e",
  display_blue = "#7fb7ca",
  gate_violet = "#602162",
  white = "#ffffff",
  warning = "#4c0f11",
  background = "#05070b"
) -> expanse_cols

#' @rdname expanse_cols
#' @export
c(
  expanse_cols$mcrn_yellow,
  expanse_cols$mcrn_red_1,
  expanse_cols$un_blue,
  expanse_cols$pk_green,
  expanse_cols$gate_violet,
  expanse_cols$white
) -> expanse_palette

#' Color palette based on selected colors from [expanse_cols]
#'
#' @export
expanse_pal <- function() { scales::manual_pal(expanse_palette) }

#' Discrete color & fill scales based on "The Expanse" palette
#'
#' See [expanse_pal]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_expanse
#' @export
scale_colour_expanse <- function(...) { discrete_scale("colour", "expanse", expanse_pal(), ...) }

#' @export
#' @rdname scale_expanse
scale_color_expanse <- scale_colour_expanse

#' @export
#' @rdname scale_expanse
scale_fill_expanse <- function(...) { discrete_scale("fill", "expanse", expanse_pal(), ...) }
