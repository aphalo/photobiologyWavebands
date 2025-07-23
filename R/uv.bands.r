#' Constructor of lists of UV wavebands
#'
#' Defined according to "ISO" by default, but other definitions also supported.
#'
#' @param std a character string "ISO", "CIE", "medical", "plants" or "none".
#' @return a list of wavebands
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}, \code{\link{UVC}},
#'   \code{\link{UVB}} and \code{\link{UVA}}.
#'
#' @examples
#' UV_bands()
#' UV_bands("ISO")
#' UV_bands("CIE")
#' UV_bands("medical")
#' UV_bands("plants")
#' UV_bands("none")
#'
#' @family lists of unweighted wavebands
#'
UV_bands <- function(std = "ISO") {
  if (std %in% c("ISO", "none", "medical")) {
    list(UVC(std), UVB(std), UVA(std))
  } else if (std == "CIE") {
    list(UVC(std), UVB(std), UVA2(std), UVA1(std))
  } else if (std == "plants") {
    list(UVB("ISO"), UVAsw(std), UVAlw(std))
  } else {
    warning("'std' = '", std, "' not implemented.")
    list()
  }
}
