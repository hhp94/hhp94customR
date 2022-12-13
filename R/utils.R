#' Print 1:6 Rows and Cols
#'
#' @param obj data.frame or matrix
#' @param i rows
#' @param j cols
#'
#' @return data.frame or matrix
#' @export
#'
#' @examples
#' head1(mtcars)
head1 <- function(obj, i = 6, j = 6){
  obj[1:i, 1:j]
}
