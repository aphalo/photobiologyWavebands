#' Calculation of red:far-red photon ratio
#'
#' Ratio between red- (655...665 nn) and far-red (725...735 nm) photon
#' irradiance as defined in plant photobiology,
#' no weighting applied.
#'
#' @usage R_FR_ratio(w.length, s.irrad, unit.in="energy")
#' @param w.length numeric array of wavelength (nm)
#' @param s.irrad numeric array of spectral (energy) irradiances (W m-2 nm-1) or (mol s-1 m-2)
#' @param unit.in character string with allowed values "energy", and "photon", or its alias "quantum"
#'
#' @return a single numeric value giving the unitless photon ratio
#' @export
#' @references
#' Smith (xxxx)
#' @seealso \code{\link{photon_ratio}} and \code{\link{energy_ratio}}
#' @examples
#' data(sun.data)
#' with(sun.data, R_FR_ratio(w.length, s.e.irrad))
R_FR_ratio <- function(w.length, s.irrad, unit.in="energy"){
  photon_ratio(w.length, s.irrad, Red(std="Smith10"), Far_red(std="Smith10"), unit.in=unit.in)
}
