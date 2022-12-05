#' Print 1:6 Rows and Cols
#'
#' @param obj data.frame or matrix
#' @param n number of rows and cols
#'
#' @return data.frame or matrix
#' @export
#'
#' @examples
#' head1(mtcars)
head1 <- function(obj, n = 6){
  obj[1:n, 1:n]
}

