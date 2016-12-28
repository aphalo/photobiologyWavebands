#' Constructor of lists of infrared wavebands
#'
#' Defined according to "ISO" or "CIE".
#'
#' @param std a character string "ISO" or "CIE".
#' @return a list of wavebands
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' IR_bands()
#' IR_bands("ISO")
#' IR_bands("CIE")
#'
#' @family lists of unweighted wavebands
#'
IR_bands <- function(std="ISO") {
  if (std=="ISO") {
    list(NIR(std), MIR(std), FIR(std))
  } else if (std=="CIE") {
    list(IRA(std), IRB(std), IRC(std))
  } else {
    warning("'std' argument value not implemented.")
    list()
  }
}
