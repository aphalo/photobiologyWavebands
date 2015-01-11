#' Definition of PAR waveband
#'
#' Photosythetically active radiation (400-700 nm), no weighting
#' applied.
#'
#' @usage PAR(std="Plant")
#' @param std a character string "Plant"
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
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
