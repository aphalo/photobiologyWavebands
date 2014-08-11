#' Definition of PAR waveband
#' 
#' Photosythetically active radiation (400-700 nm), no weighting
#' applied.
#' 
#' @usage PAR(std="Plant")
#' @param std a character string "Plant"
#' @export
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' PAR()
#' PAR("Plant")
PAR <- function(std="Plant"){
  if (std=="Plant") {
    return(new_waveband(400, 700, wb.name="PAR"))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}