#' Definition of CH4 production from pectin weighted waveband
#'
#' Methane production from pectin BSWF
#'
#' @usage CH4(norm=300)
#' @param norm normalization wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @references
#' McLeod, A. R.; Fry, S. C.; Loake, G. J.; Messenger, D. J.; Reay, D. S.; Smith, K. A. & Yun, Byung-Wook. (2008)
#' Ultraviolet radiation drives methane emissions from terrestrial plant pectins. The New phytologist, 180, 124-132
#'
#' Bloom, A. A.; Lee-Taylor, J.; Madronich, S.; Messenger, D. J.; Palmer, P. I.; Reay, D. S. & McLeod, A. R. (2010)
#' Global methane emission estimates from ultraviolet irradiation of terrestrial plant foliage.
#' New Phytologist, 187, 417--425
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' CIE()
#' CIE(300)

CH4 <- function(norm=300) {
  new_waveband(w.low=275, w.high=400,
               weight="SWF", SWF.e.fun=CH4.e.fun, SWF.norm=300,
               norm=norm,
               wb.name=paste("CH4pect", as.character(norm), sep="."), wb.label="CH4 pectin")
}
