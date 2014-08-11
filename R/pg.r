#' Definition of PG weighted waveband
#' 
#' Plant growth BSWF
#' 
#' @param norm normalization wavelength (nm)
#' @return a list defining the wavelength range, weighting and normalization
#' @usage PG(norm=300)
#' @references
#' Flint, S. and Caldwell M. M. (2003)
#' 
#' @export
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' PG()
#' PG(300)

PG <- function(norm=300) {
  new_waveband(w.low=250, w.high=390, weight="SWF", SWF.q.fun=PG.q.fun, SWF.norm=299.925658, 
               norm=norm, wb.name=paste("PG", as.character(norm), sep="."), wb.label="PG")
}