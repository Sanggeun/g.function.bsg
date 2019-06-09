#' change to underbar
#'
#' underbar_change
#'
#' @param x the vector have marks or symbols changed to underbar.
#' @return A vector
#' @example
#'   a <- "1999.12.30"
#'   underbar_change(a)
#' @export

underbar_change <- function(x) gsub("[[:punct:]]+", "_", gsub("[[:punct:]]$", "", x))
