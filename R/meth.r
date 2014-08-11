#' Definition of CH4 production from pectin weighted waveband
#' 
#' Methane production from pectin BSWF
#' 
#' @usage CH4(norm=300)
#' @param norm normalization wavelength (nm)
#' @return a list defining the wavelength range, weighting and normalization
#' @references 
#' Bloom, A. A.; Lee-Taylor, J.; Madronich, S.; Messenger, D. J.; Palmer, P. I.; Reay, D. S. & McLeod, A. R. 
#' Global methane emission estimates from ultraviolet irradiation of terrestrial plant foliage. 
#' New Phytologist, Blackwell Publishing Ltd, 2010, 187, 417--425 .
#' @note \url{http://uv4growth.dyndns.org/}
#' 
#' @export
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' CIE()
#' CIE(300)

CH4 <- function(norm=300) {
  new_waveband(w.low=250, w.high=400, 
               weight="SWF", SWF.e.fun=CH4.e.fun, SWF.norm=300, 
               norm=norm, 
               wb.name=paste("CH4pect", as.character(norm), sep="."), wb.label="CH4 pectin")
}