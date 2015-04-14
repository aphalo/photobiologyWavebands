#' Definition of yellow waveband
#'
#' Yellow radiation (570...591 nm), no weighting
#' applied.
#'
#' @usage Yellow(std="ISO")
#' @param std a character string "ISO"
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#' @references
#' ISO-21348:2007 Space environment (natural and artificial) -- Process for determining
#' solar irradiances. ISO, Geneva.
#'
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' Yellow()
#' Yellow("ISO")
#'
#' @family unweighted wavebands
#'
Yellow <- function(std="ISO"){
  if (std=="ISO") {
    return(new_waveband(570, 591, wb.name="Yellow.ISO", wb.label="Yellow"))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}
