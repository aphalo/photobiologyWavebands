#' Definition of DNA damage (SETLOW) weighted waveband
#'
#' Naked DNA damage BSWF, Green and Miller's formulation.
#'
#' @param norm normalization wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @usage DNA.GM(norm=300)
#' @references
#' Green and Miller (19XX)
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' DNA.GM()
#' DNA.GM(300)

DNA.GM <- function(norm=300) {
  new_waveband(w.low=275, w.high=400,
               weight="SWF", SWF.q.fun=DNA.GM.q.fun, SWF.norm=300, norm=norm,
               wb.name=paste("DNA.GM", as.character(norm), sep="."), wb.label="DNA G&M")
}
