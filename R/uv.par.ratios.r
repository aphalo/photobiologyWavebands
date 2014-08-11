#' Calculation of UV:PAR photon ratio
#'
#' Ratio between ultraviolet- (100...400 nn) and photosynthetically active radiation
#' (400...700 nm) photon
#' irradiance as defined in plant photobiology,
#' no weighting applied.
#'
#' @usage UV_PAR_ratio(w.length, s.irrad, unit.in="energy")
#' @param w.length numeric array of wavelength (nm)
#' @param s.irrad numeric array of spectral (energy) irradiances (W m-2 nm-1) or (mol s-1 m-2)
#' @param unit.in character string with allowed values "energy", and "photon", or its alias "quantum"
#'
#' @return a single numeric value giving the unitless photon ratio
#' @export
#' @seealso \code{\link{photon_ratio}} and \code{\link{energy_ratio}}
#' @examples
#' data(sun.data)
#' with(sun.data, UV_PAR_ratio(w.length, s.e.irrad))
UV_PAR_ratio <- function(w.length, s.irrad, unit.in="energy"){
  photon_ratio(w.length, s.irrad, UV(std="ISO"), PAR(std="Plant"), unit.in=unit.in)
}

#' Calculation of UV-A:PAR photon ratio
#'
#' Ratio between ultraviolet-A (315...400 nn) and photosynthetically active radiation
#' (400...700 nm) photon
#' irradiance as defined in plant photobiology,
#' no weighting applied.
#'
#' @usage UVA_PAR_ratio(w.length, s.irrad, unit.in="energy")
#' @param w.length numeric array of wavelength (nm)
#' @param s.irrad numeric array of spectral (energy) irradiances (W m-2 nm-1) or (mol s-1 m-2)
#' @param unit.in character string with allowed values "energy", and "photon", or its alias "quantum"
#'
#' @return a single numeric value giving the unitless photon ratio
#' @export
#' @seealso \code{\link{photon_ratio}} and \code{\link{energy_ratio}}
#' @examples
#' data(sun.data)
#' with(sun.data, UVA_PAR_ratio(w.length, s.e.irrad))
UVA_PAR_ratio <- function(w.length, s.irrad, unit.in="energy"){
  photon_ratio(w.length, s.irrad, UVA(std="ISO"), PAR(std="Plant"), unit.in=unit.in)
}

#' Calculation of UV-B:PAR photon ratio
#'
#' Ratio between ultraviolet-B (280...315 nn) and photosynthetically active radiation
#' (400...700 nm) photon
#' irradiance as defined in plant photobiology,
#' no weighting applied.
#'
#' @usage UVB_PAR_ratio(w.length, s.irrad, unit.in="energy")
#' @param w.length numeric array of wavelength (nm)
#' @param s.irrad numeric array of spectral (energy) irradiances (W m-2 nm-1) or (mol s-1 m-2)
#' @param unit.in character string with allowed values "energy", and "photon", or its alias "quantum"
#'
#' @return a single numeric value giving the unitless photon ratio
#' @export
#' @seealso \code{\link{photon_ratio}} and \code{\link{energy_ratio}}
#' @examples
#' data(sun.data)
#' with(sun.data, UVB_PAR_ratio(w.length, s.e.irrad))
UVB_PAR_ratio <- function(w.length, s.irrad, unit.in="energy"){
  photon_ratio(w.length, s.irrad, UVB(std="ISO"), PAR(std="Plant"), unit.in=unit.in)
}

#' Calculation of UV:PAR photon ratio
#'
#' Ratio between ultraviolet-C (100...280 nn) and photosynthetically active radiation
#' (400...700 nm) photon
#' irradiance as defined in plant photobiology,
#' no weighting applied.
#'
#' @usage UVC_PAR_ratio(w.length, s.irrad, unit.in="energy")
#' @param w.length numeric array of wavelength (nm)
#' @param s.irrad numeric array of spectral (energy) irradiances (W m-2 nm-1) or (mol s-1 m-2)
#' @param unit.in character string with allowed values "energy", and "photon", or its alias "quantum"
#'
#' @return a single numeric value giving the unitless photon ratio
#' @export
#' @seealso \code{\link{photon_ratio}} and \code{\link{energy_ratio}}
#' @examples
#' data(sun.data)
#' with(sun.data, UVC_PAR_ratio(w.length, s.e.irrad))
UVC_PAR_ratio <- function(w.length, s.irrad, unit.in="energy"){
  photon_ratio(w.length, s.irrad, UVC(std="ISO"), PAR(std="Plant"), unit.in=unit.in)
}
