#' Definition of DNA damage (SETLOW) weighted waveband
#'
#' Naked DNA damage BSWF
#'
#' @param norm normalization wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @usage DNA.N(norm=300)
#' @references
#' Webb, A. (20XX)
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' DNA.N()
#' DNA.N(300)

DNA.N <- function(norm=300) {
  new_waveband(w.low=275, w.high=400, SWF.norm=300,
               weight="SWF", SWF.q.fun=DNA.N.q.fun,
               norm=norm, wb.name=paste("DNA.N", as.character(norm), sep="."), wb.label="DNA Naked")
}
