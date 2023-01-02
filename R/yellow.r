#' Constructor of yellow waveband
#'
#' Wavelength-range definition for \emph{yellow} radiation according to ISO.
#'
#' @details Yellow radiation (570...591 nm) as defined in ISO standards based
#'   on human colour vision.
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
#' e_irrad(sun.spct, Yellow()) # W m-2
#' q_irrad(sun.spct, Yellow()) # mol m-2
#' q_irrad(sun.spct, Yellow(), scale.factor = 1e6) # umol m-2
#'
#' @family unweighted wavebands
#'
Yellow <- function(std = "ISO") {
  if (std == "ISO") {
    new_waveband(570, 591, wb.name = "Yellow.ISO", wb.label = "Yellow")
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}
