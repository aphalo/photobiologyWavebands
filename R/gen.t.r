#' Definition of GPAS (Timijan) weighted waveband
#' 
#' Generalized Plant Action BSWF of Caldwell as formulated by Timijan et al.
#' 
#' @param norm normalization wavelength (nm)
#' @return a list defining the wavelength range, weighting and normalization
#' @usage GEN.T(norm=300)
#' @references
#' Caldwell, M. M. (1971)
#' Timijan et al. (198X)
#' 
#' @export
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' GEN.T()
#' GEN.T(300)

GEN.T <- function(norm=300) {
  new_waveband(w.low=250, w.high=390, weight="SWF", SWF.q.fun=GEN.T.q.fun, SWF.norm=300, 
               norm=norm, wb.name=paste("GEN.T", as.character(norm), sep="."), wb.label="GEN(T)")
}