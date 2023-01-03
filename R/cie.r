#' Constructor of CIE weighted waveband
#'
#' Erythema BSWF (1998 update)
#'
#' @param std a character string, currently only "CIE98" supported.
#' @param norm normalization wavelength (nm)
#' @param w.low short-end boundary wavelength (nm)
#' @param w.high long-end boundary wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting
#'   function and normalization wavelength.
#'
#' @note The erythema BSWF from CIE is specified by a mathematical formula, and
#' this is used directly in the definition of the returned waveband.
#'
#' Standard DIN 5031-10:2018-03 defines BSWF \emph{er} as a table of
#' interpolated values derived from CIE's definition from 1998. So, the values
#' computed using this R package do not necessarily exactly match those
#' according to DIN 5031-10:2018-03. The range of wavelengths used, 250 to 400
#' nm, does agree, with those in the standard.
#'
#' @references
#' Webb, A. R.; Slaper, H.; Koepke, P. & Schmalwieser, A. W. (2011) Know your
#' standard: clarifying the CIE erythema action spectrum. Photochemistry and
#' photobiology, 2011, 87, 483-486
#'
#' DIN (2018) Standard DIN 5031-10:2018-03 Optical radiation physics and
#' illuminating engineering. Part 10: Photobiologically effective radiation,
#' quantities, symbols and action spectra. Beuth Verlag, Berlin 2018.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' erythema()
#' erythema("CIE98")
#' CIE()
#' CIE(norm = 300)
#' erythema(norm = 300)
#'
#' @family BSWF weighted wavebands
#'
erythema <- function(std = "CIE98",
                     norm = 298,
                     w.low = 250,
                     w.high = 400) {
  if (std == "CIE98") {
    new_waveband(
      w.low = w.low,
      w.high = w.high,
      weight = "SWF",
      SWF.e.fun = CIE_e_fun,
      SWF.norm = 298,
      norm = norm,
      hinges = c(250 - 1e-12, 250, 298, 328, 400 - 1e-12, 400),
      wb.name = paste("CIE98", as.character(norm), sep = "."),
      wb.label = "CIE98"
    )
  } else {
    waveband()
  }
}

#' @rdname erythema
#'
#' @export
#'
#' @family BSWF weighted wavebands
#'
# Backwards compatibility
CIE <- function(norm = 298,
                w.low = 250,
                w.high = 400) {
  erythema(std = "CI98",
           norm = norm,
           w.low = w.low,
           w.high = 400)
}
