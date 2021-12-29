#' Constructor of green waveband
#'
#' Green radiation according to ISO or as commonly defined in plant
#' photobiology, no weighting applied.
#'
#' @param std a character string "ISO", "Sellaro" or "LandsatRBV", and
#'   equivalent names for Landsat imagers.
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @note When released, this package will replace the package UVcalc.
#' @examples
#' Green()
#' Green("ISO") # 500 to 570
#' Green("Sellaro") # 500 to 570 nm
#'
#' @family unweighted wavebands
#'
Green <- function(std = "ISO") {
  label = "Green"
  if (std == "ISO") {
    new_waveband(500,
                 570,
                 wb.name = paste("Green", std, sep = "."),
                 wb.label = label)
  } else if (std == "Sellaro") {
    new_waveband(500,
                 570,
                 wb.name = paste("Green", std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatOLI" || std == "RS") {
    new_waveband(525,
                 600,
                 wb.name = paste("Green", std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatETM" || std == "LandsatTM") {
    new_waveband(520,
                 600,
                 wb.name = paste("Green", std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatMSS") {
    new_waveband(500,
                 600,
                 wb.name = paste("Green", std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatRBV") {
    new_waveband(480,
                 580,
                 wb.name = paste("Green", std, sep = "."),
                 wb.label = label)
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}
