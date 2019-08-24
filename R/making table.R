#' insert mean and confidence interval into table
#'
#' @param x a vector which has mean ans confidence interval.
#' @param digits integer indicating the number of (fixed) decimal places.
#' @return a character atomic vector
#' @example
#'    a <- c(12,11, 13,11, 14,11)
#'    Mean_CI(a)
#'@export

Mean_CI<- function(x, digits=3) {
  result <- paste0(round_new(x[,1],digits ),
                   "(",
                   round_new(x[,2], digits),
                   "-",
                   round_new(x[,3], digits),
                   ")"
  )

  return(result)
}

#' insert Odds ratio into table
#'
#' @param coef a atomic vector which has a coefficient value.
#' @param conf a vector which has low limit and upper limir of confidence interval.
#' @param digits integer indicating the number of (fixed) decimal places.
#' @return a character atomic vector
#' @example
#'    a <- 1.2
#'    b <- c(1.1, 1.3)
#'    oddsratio_CI(a,b)
#'@export

oddsratio_CI <- function(coef, conf, digits) {
  re  <- paste0(round_new(coef, 2),
                "(", round_new(conf[1], digits), "-", round_new(conf[2], digits), ")")
  return(re)
}
