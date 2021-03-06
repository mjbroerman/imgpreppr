# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' My Hello World Function
#'
#'
#' @param x The name of the person to be greeted.
#'
#' @return The output from \code{\link{print}}
#' @export
#'
#' @examples
#' hello("Matt")
#' \dontrun{
#' hello("Harry")
#' }
hello <- function(x) {
  print(paste0("Hello, ", x, ", this is the world!"))
}
