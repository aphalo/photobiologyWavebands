#' Definition of FLAV BSWF flavonoids
#' 
#' Mesembryanthin accumulation BSWF, data and formulation from Ibdah et al.
#' 
#' @param norm normalization wavelength (nm)
#' @return a list defining the wavelength range, weighting and normalization
#' @usage FLAV(norm=300)
#' @references
#' Ibdah et al. (20XX)
#' 
#' @export
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' FLAV()
#' FLAV(300)

FLAV <- function(norm=300) {
  new_waveband(w.low=250, w.high=346, 
               weight="SWF", SWF.q.fun=FLAV.q.fun, SWF.norm=300, 
               norm=norm, hinges=c(279.99,280,345.99,346), 
               wb.name=paste("FLAV", as.character(norm), sep="."), wb.label="FLAV")
}