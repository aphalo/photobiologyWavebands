#' Constructor of purple waveband
#'
#' Purple radiation (360...450 nm), no weighting
#' applied.
#'
#' @param std a character string "ISO", or Landsat imager "LandsatOLI".
#'
#' @return A waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' Purple()
#' Purple("ISO")
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
