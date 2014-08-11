#' Definition of UV waveband
#' 
#' UV: 100--400 nm.
#' 
#' @return a list defining the wavelength range
#' @usage UV(std="ISO")
#' @param std "ISO" or "CIE"
#' @references
#' ISO and CIE standards
#' 
#' @export
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' UV()
#' UV("ISO")

UV <- function(std="ISO") {
  new_waveband(w.low=100, w.high=400, wb.name=paste("UV", std, sep="."), wb.label="UV")
}