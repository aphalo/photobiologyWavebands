#' Constructor of CH4 production from pectin weighted waveband
#'
#' Methane production from pectin BSWF
#'
#' @param norm normalization wavelength (nm)
#' @param w.low short-end boundary wavelength (nm)
#' @param w.high long-end boundary wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @references
#' Bloom, A. A.; Lee-Taylor, J.; Madronich, S.; Messenger, D. J.; Palmer, P. I.;
#' Reay, D. S. & McLeod, A. R. (2010) Global methane emission estimates from
#' ultraviolet irradiation of terrestrial plant foliage. New Phytologist,
#' Blackwell Publishing Ltd, 187, 417--425 .
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' CH4()
#' CH4(norm = 400)
#'
#' @family BSWF weighted wavebands
#'
CH4 <- function(norm = 300,
                w.low = 275,
                w.high = 400) {
  new_waveband(
    w.low = w.low,
    w.high = w.high,
    weight = "SWF",
    SWF.e.fun = CH4_e_fun,
    SWF.norm = 300,
    norm = norm,
    wb.name = paste("CH4pect", as.character(norm), sep = "."),
    wb.label = "CH4 pectin"
  )
}
