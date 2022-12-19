#' Print 1:6 Rows and Cols
#'
#' If a matrix/df is too big, Rstudio will try to print out everything and
#' freeze. This is a wrapper around `head(x, c(n, m))`.
#'
#' @param obj data.frame or matrix
#' @param n rows
#' @param m cols
#' @param ... args passed to [utils::head()]
#'
#' @return data.frame or matrix
#' @export
#'
#' @examples
#' head1(mtcars)
head1 <- function(obj, ...) {
  UseMethod("head1")
}

#' @rdname head1
#' @export
head1.default <- function(obj, ...) {
  utils::head(obj, ...)
}

#' @rdname head1
#' @export
head1.matrix <- function(obj, n = 6, m = 6, ...){
  utils::head(obj, c(n, m), ...)
}
