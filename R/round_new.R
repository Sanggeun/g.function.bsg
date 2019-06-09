#' Rounding Numberss
#'
#' rounds the values in its first argument to the specified number of decimal places (default 0).
#' @param x A numeric vector to be rounded.
#' @param digits integer indicating the number of (fixed) decimal places.
#' @return A numeric vectors
#' @example
#'    a <- 12.5602
#'    round(a, 3)
#'@export

round_new <- function(x, digits=3) {
  formatC(round(x,digits),digits,format="f")
}
