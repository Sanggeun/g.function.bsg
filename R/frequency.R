#' frequency
#'
#' rounds the values in its first argument to the specified number of decimal places (default 0).
#' @param vec vector in which have only two values, 0 and 1.
#' @param na.rm na.rm
#' @param digits digits
#' @return percent
#' @example
#'    a <- c(1,0,0,0,1,0,0,0)
#'    freq_fx(a)
#'@export

freq_fx <- function(vec, na.rm = TRUE, digits = 1) {
  round_new(mean(vec, na.rm = na.rm) * 100, digits)
}
