#' Definition of orange waveband
#' 
#' Orange radiation (591...610 nm), no weighting
#' applied.
#' 
#' @usage Orange(std="ISO")
#' @param std a character string "ISO"
#' @export
#' @references
#' ISO-21348
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' Orange()
#' Orange("ISO")
Orange <- function(std="ISO"){
  if (std=="ISO") {
    return(new_waveband(591, 610, wb.name="Orange.ISO", wb.label="Orange"))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}