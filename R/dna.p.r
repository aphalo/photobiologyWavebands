#' Definition of DNA damage (Quaite) weighted waveband
#'
#' Plant DNA damage BSWF as formulated by Musil.
#'
#' @param norm normalization wavelength (nm)
#' @param w.low short-end boundary wavelength (nm)
#' @param w.high long-end boundary wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @usage DNA_P(norm=300, w.low=275, w.high=400)
#' @references
#' Quaite, F. E.; Sutherland, B. M. & Sutherland, J. C. Action spectrum for DNA damage
#' in alfalfa lowers predicted impact of ozone depletion. Nature, 1992, 358, 576–578
#'
#' Musil, C. F. ... (200x) ...
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' DNA_P()
#' DNA_P(300)
#'
#' @family BSWF weighted wavebands
#'
DNA_P <- function(norm=300, w.low=275, w.high=400) {
  new_waveband(w.low=w.low, w.high=w.high,
               weight="SWF", SWF.q.fun=DNA_P_q_fun, SWF.norm=290.00011, norm=norm,
               wb.name=paste("DNA.P", as.character(norm), sep="."), wb.label="DNA plant")
}

#' Definition of DNA damage (Quaite) weighted waveband
#'
#' Plant DNA damage BSWF as formulated by Musil.
#'
#' @seealso \code{\link{DNA_P}}
#'
#' @export
#'
#' @keywords internal
#'
DNA.P <- DNA_P
