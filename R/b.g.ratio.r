#' Calculation of blue:green photon ratio
#' 
#' Ratio between blue- (420...490 nn) and green (500...570 nm) photon 
#' irradiance as defined in plant photobiology, 
#' no weighting applied.
#' 
#' @usage B_G_ratio(w.length, s.irrad, unit.in="energy")
#' @param w.length numeric array of wavelength (nm)
#' @param s.irrad numeric array of spectral (energy) irradiances (W m-2 nm-1) or (mol s-1 m-2)
#' @param unit.in character string with allowed values "energy", and "photon", or its alias "quantum"
#' 
#' @return a single numeric value giving the unitless photon ratio
#' @export
#'
#' @references
#' Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A. R., Robson, T. M., 
#' Rosenqvist, E. (Eds.). (2012). Beyond the Visible: A handbook of best 
#' practice in plant UV photobiology (1st ed., p. xxx + 174). 
#' Helsinki: University of Helsinki, Department of Biosciences, 
#' Division of Plant Biology. ISBN 978-952-10-8363-1 (PDF), 
#' 978-952-10-8362-4 (paperback). Open access PDF download available at 
#' http://hdl.handle.net/10138/37558
#' 
#' @references
#' Sellaro, R., Crepy, M., Trupkin, S. A., Karayekov, E., Buchovsky, A. S., 
#' Rossi, C., & Casal, J. J. (2010). Cryptochrome as a sensor of the 
#' blue/green ratio of natural radiation in Arabidopsis. Plant physiology, 
#' 154(1), 401--409. doi:10.1104/pp.110.160820
#' 
#' @seealso \code{\link{photon_ratio}} and \code{\link{energy_ratio}}
#' @examples
#' data(sun.data)
#' with(sun.data, B_G_ratio(w.length, s.e.irrad))
B_G_ratio <- function(w.length, s.irrad, unit.in="energy"){
  photon_ratio(w.length, s.irrad, Blue(std="Sellaro"), Green("Sellaro"), unit.in=unit.in)
}