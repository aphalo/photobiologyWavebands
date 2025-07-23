#' Constructor of lists of VIS wavebands
#'
#' Defined according to "ISO".
#'
#' @param std a character string "ISO".
#' @return a list of wavebands
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}, \code{\link{Purple}},
#'   \code{\link{Blue}}, \code{\link{Green}}, \code{\link{Yellow}},
#'   \code{\link{Orange}}, and \code{\code{Red}}.
#'
#' @examples
#' VIS_bands()
#' VIS_bands("ISO")
#'
#' @family lists of unweighted wavebands
#'
VIS_bands <- function(std = "ISO") {
  if (std == "ISO") {
    list(Purple(std), Blue(std), Green(std), Yellow(std), Orange(std), Red(std))
  } else {
    warning("'std' argument value '", std, "' not implemented.")
    list()
  }
}
