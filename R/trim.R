#' trim.
#'
#' trim function
#'
#' @param x the vector to be trimmed
#' @return A vector
#' @example
#'   a <- "  baesg  "
#'   trim(a)
#'@export

trim <- function (x) gsub("^\\s+|\\s+$", "", x)
