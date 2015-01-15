#' Definition of FLAV BSWF flavonoids
#'
#' Mesembryanthin accumulation BSWF, data and formulation from Ibdah et al.
#'
#' @param norm normalization wavelength (nm)
#' @param w.low short-end boundary wavelength (nm)
#' @param w.high long-end boundary wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @usage FLAV(norm=300, w.low=275, w.high=346)
#' @references
#' Ibdah et al. (20XX)
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' FLAV()
#' FLAV(300)

FLAV <- function(norm=300, w.low=275, w.high=346) {
  new_waveband(w.low=w.low, w.high=w.high,
               weight="SWF", SWF.q.fun=FLAV.q.fun, SWF.norm=300,
               norm=norm, hinges=c(279.99,280,345.99,346),
               wb.name=paste("FLAV", as.character(norm), sep="."), wb.label="FLAV")
}
