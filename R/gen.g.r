#' Definition of GPAS (Green) weighted waveband
#' 
#' Generalized Plant Action BSWF of Caldwell as formulated by Green et al.
#' 
#' @param norm normalization wavelength (nm)
#' @return a list defining the wavelength range, weighting and normalization
#' @usage GEN.G(norm=300)
#' @references
#' Caldwell, M. M. (1971)
#' Green et al. (198X)
#' 
#' @export
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' GEN.G()
#' GEN.G(300)

GEN.G <- function(norm=300) {
  new_waveband(w.low=250, w.high=313.3, weight="SWF", SWF.q.fun=GEN.G.q.fun, SWF.norm=280, 
               norm=norm, wb.name=paste("GEN.G", as.character(norm), sep="."), wb.label="GEN(G)")
}