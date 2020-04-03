#' order_character
#'
#' order_character returns a permutation which rearrange its first argument into specified order of its second argument.
#' @param vec_cha atomic character vector.
#' @param vec_or atomic character vector having a specific order.
#' @return order vector
#' @example
#' df = data.frame(a = c('여', '남',
#'                      '200-400만원', '400-600만원', '600만원이상','200만원미만'),
#'                 b = c(10,20,40,60,20,40))
#' or = c( "남", "여",
#'        '200만원미만', '200-400만원', '400-600만원', '600만원이상')
#' order_new <- order_character(vec_cha = df$a, vec_or = or)
#' df[order_new, ]
#'@export

order_character <- function(vec_cha, vec_or) {
  p <- NULL
  for (i in vec_or) {
    j = 0
    while (j <= length(vec_cha)) {
      j = j + 1
      if (is.na(k_s[j])) {
        next
      }
      if (k_s[j] == i){
        p = c(p, j)
      }
    }
  }
  return(p)
}
