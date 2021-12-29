#' Contructor of lists of VIS wavebands
#'
#' Defined according to "ISO".
#'
#' @param std a character string "ISO".
#' @return a list of wavebands
#' @export
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
