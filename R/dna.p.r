#' Definition of DNA damage (Quaite) weighted waveband
#'
#' Plant DNA damage BSWF as formulated by Musil.
#'
#' @param norm normalization wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @usage DNA.P(norm=300)
#' @references
#' Quaite (19XX), Musil (200x)
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' DNA.N()
#' DNA.N(300)

DNA.P <- function(norm=300) {
  new_waveband(w.low=275, w.high=400,
               weight="SWF", SWF.q.fun=DNA.P.q.fun, SWF.norm=290.00011, norm=norm,
               wb.name=paste("DNA.P", as.character(norm), sep="."), wb.label="DNA plant")
}
