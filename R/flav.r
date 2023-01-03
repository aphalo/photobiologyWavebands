#' Constructor of FLAV BSWF flavonoids
#'
#' Mesembryanthin accumulation BSWF, data and formulation from Ibdah et al.
#'
#' @param norm normalization wavelength (nm)
#' @param w.low short-end boundary wavelength (nm)
#' @param w.high long-end boundary wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting
#'   function and normalization wavelength.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' FLAV()
#' FLAV(300)
#'
#' @family BSWF weighted wavebands
#'
#' @references
#' Ibdah, M.; Krins, A.; Seidlitz, H. K.; Heller, W.; Strack, D. &
#' Vogt, T. (2002) Spectral dependence of flavonol and betacyanin accumulation
#' in Mesembryanthemum crystallinum under enhanced ultraviolet radiation. Plant,
#' Cell & Environment, 25, 1145-1154. \doi{10.1046/j.1365-3040.2002.00895.x}
#'
FLAV <- function(norm = 300,
                 w.low = 275,
                 w.high = 346) {
  new_waveband(
    w.low = w.low,
    w.high = w.high,
    weight = "SWF",
    SWF.q.fun = FLAV_q_fun,
    SWF.norm = 300,
    norm = norm,
    hinges = c(280 - 1e-12, 280, 346 - 1e-12, 346),
    wb.name = paste("FLAV", as.character(norm), sep = "."),
    wb.label = "FLAV"
  )
}
