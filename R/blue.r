#' Constructor of blue waveband
#'
#' Default defined according to "ISO".
#'
#' @param std a character string "ISO", "Sellaro" (plant biology), "Broad"
#'   (plant biology) or "RS" (remote sensing), or Landsat imagers, "LandsatTM",
#'   "LandsatETM", or "LandsatOLI".
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' Blue()
#' Blue("ISO")
#' Blue("Sellaro")
#'
#' @family unweighted wavebands
#'
Blue <- function(std = "ISO") {
  label = "Blue"
  if (std == "ISO") {
    new_waveband(450,
                 500,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else if (std == "Sellaro") {
    new_waveband(420,
                 490,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else if (std == "broad") {
    new_waveband(400,
                 500,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatOLI" || std == "RS") {
    new_waveband(450,
                 515,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatETM" || std == "LandsatTM") {
    new_waveband(450,
                 520,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}
