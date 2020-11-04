
#' Silly Printer function
#'
#' @param r what you want in the second column
#' @param x what you want in the first column
#'
#' @return A tibble
#' @export
#'
#' @importFrom tibble tibble
#' @importFrom utils head
#' @examples
#' printer(x = rnorm(5), r = rnorm(5))
printer = function(r, x) {
  x = tibble::tibble(x = x, r = r)
  print(utils::head(x))
  return(x)
}
