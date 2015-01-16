#' Definition of DNA damage (SETLOW) weighted waveband
#'
#' Naked DNA damage BSWF
#'
#' @param norm normalization wavelength (nm)
#' @param w.low short-end boundary wavelength (nm)
#' @param w.high long-end boundary wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @usage DNA.N(norm=300, w.low=275, w.high=400)
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @references
#' Setlow, RB. The Wavelengths in Sunlight Effective in Producing Skin Cancer: A Theoretical
#' Analysis. Proceedings of the National Academy of Sciences, 1974, 71, 3363-3366
#'
#' @examples
#' DNA.N()
#' DNA.N(300)

DNA.N <- function(norm=300, w.low=275, w.high=400) {
  new_waveband(w.low=w.low, w.high=w.high, SWF.norm=300,
               weight="SWF", SWF.q.fun=DNA.N.q.fun,
               norm=norm, wb.name=paste("DNA.N", as.character(norm), sep="."), wb.label="DNA Naked")
}
