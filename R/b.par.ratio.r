#' Calculation of blue:PAR photon ratio
#' 
#' Ratio between blue- (420...490 nn) and PAR (400...700 nm) photon 
#' irradiance as defined in plant photobiology, 
#' no weighting applied.
#' 
#' @usage B_PAR_ratio(w.length, s.irrad, unit.in="energy")
#' @param w.length numeric array of wavelength (nm)
#' @param s.irrad numeric array of spectral (energy) irradiances (W m-2 nm-1) or (mol s-1 m-2)
#' @param unit.in character string with allowed values "energy", and "photon", or its alias "quantum"
#' 
#' @return a single numeric value giving the unitless photon ratio
#' @export
#' @references
#' Sellaro et al. (xxxx)
#' @seealso \code{\link{photon_ratio}} and \code{\link{energy_ratio}}
#' @examples
#' data(sun.data)
#' with(sun.data, B_PAR_ratio(w.length, s.e.irrad))
B_PAR_ratio <- function(w.length, s.irrad, unit.in="energy"){
  photon_ratio(w.length, s.irrad, Blue(std="Sellaro"), PAR(), unit.in=unit.in)
}