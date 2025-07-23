#' Constructor of purple waveband
#'
#' Wavelength-range definition for \emph{purple} radiation according to ISO or
#' imagers in the Landsat satellites.
#'
#' @details Purple (or violet) wavelengths as defined by ISO standards based on
#'    human vision overlap the UVA band as defined by a separate ISO standard.
#'    In other contexts like plant photobiology purple is included under blue,
#'    while some overoptimistic LED sellers call LEDs emitting in the violet
#'    region ultraviolet LEDs. In addition to the ISO definition of purple,
#'    a purple channel from Landsat imagers is implemented.
#'
#' @param std a character string "ISO", or Landsat imager "LandsatOLI".
#'
#' @return A waveband object defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' Purple()
#' Purple("ISO")
#'
#' e_irrad(sun.spct, Purple()) # W m-2
#' q_irrad(sun.spct, Purple()) # mol m-2
#' q_irrad(sun.spct, Purple(), scale.factor = 1e6) # umol m-2
#'
#' @family unweighted wavebands
#'
Purple <- function(std = "ISO") {
  if (std == "ISO") {
    new_waveband(360,
                 450,
                 wb.name = paste("Purple", std, sep = "."),
                 wb.label = "Purple")
  } else if (std == "LandsatOLI" || "RS") {
    new_waveband(433,
                 453,
                 wb.name = paste("Purple", std, sep = "."),
                 wb.label = "Purple")
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}
