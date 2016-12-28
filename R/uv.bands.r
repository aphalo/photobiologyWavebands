#' Constructor of lists of UV wavebands
#'
#' Defined according to "ISO".
#'
#' @param std a character string "ISO", "CIE", "medical" or "none".
#' @return a list of wavebands
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' UV_bands()
#' UV_bands("ISO")
#' UV_bands("CIE")
#' UV_bands("medical")
#' UV_bands("none")
#'
#' @family lists of unweighted wavebands
#'
UV_bands <- function(std="ISO") {
  if (std %in% c("ISO", "none", "medical")) {
    list(UVC(std), UVB(std), UVA(std))
  } else if (std=="CIE") {
    list(UVC(std), UVB(std), UVA1(std), UVA2(std))
  } else {
    warning("'std' = '", std, "' not implemented.")
    list()
  }
}
