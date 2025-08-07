#' Constructor of VIS waveband
#'
#' Visible (to humans) radiation (380...760 nm) according to ISO standard
#' definition, no weighting applied. For \code{std = "RS"} the returned range is
#' the same as for \code{PAR()}. The panchromatic bands of Landsat missions are
#' also supported.
#'
#' @param std a character string "ISO" or "RS" (remote sensing).
#'
#' @return A waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' VIS()
#' VIS("ISO")
#' VIS("LandsatOLI")
#' VIS("Landsat7")
#' VIS("Pan.RBV.Landsat3")
#'
#' @family unweighted wavebands
#'
VIS <- function(std = "ISO") {
  if (std == "ISO") {
    new_waveband(380, 760, wb.name = "VIS.ISO", wb.label = "VIS")
  } else if (std == "RS") {
    new_waveband(400, 700, wb.name = "VIS.RS", wb.label = "VIS")
  } else if (std == "LandsatOLI") {
    new_waveband(500, 680, wb.name = "Pan.LandsatOLI", wb.label = "Pan")
  } else if (std == "Landsat7") {
    new_waveband(500, 900, wb.name = "Pan.Landsat7", wb.label = "Pan")
  } else if (std == "LandsatRBV") {
    new_waveband(505, 750, wb.name = "Pan.RBV.Landsat3", wb.label = "Pan")
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}
