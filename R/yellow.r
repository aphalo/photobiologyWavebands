#' Definition of yellow waveband
#' 
#' Yellow radiation (570...591 nm), no weighting
#' applied.
#' 
#' @usage Yellow(std="ISO")
#' @param std a character string "ISO"
#' @export
#' @references
#' ISO-21348
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' Yellow()
#' Yellow("ISO")
Yellow <- function(std="ISO"){
  if (std=="ISO") {
    return(new_waveband(570, 591, wb.name="Yellow.ISO", wb.label="Yellow"))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}