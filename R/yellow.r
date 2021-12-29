#' Constructor of yellow waveband
#'
#' Yellow radiation (570...591 nm), no weighting applied.
#'
#' @param std a character string "ISO"
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' Yellow()
#' Yellow("ISO")
#'
#' @family unweighted wavebands
#'
Yellow <- function(std = "ISO") {
  if (std == "ISO") {
    new_waveband(570, 591, wb.name = "Yellow.ISO", wb.label = "Yellow")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}
