#' Definition of VIS waveband
#'
#' Photosythetically active radiation (380...760 nm), no weighting
#' applied.
#'
#' @usage VIS(std="ISO")
#' @param std a character string "ISO"
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#' @references
#' ISO-21348:2007 Space environment (natural and artificial) -- Process for determining
#' solar irradiances. ISO, Geneva.
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' VIS()
#' VIS("ISO")
#'
#' @family unweighted wavebands
#'
VIS <- function(std="ISO"){
  if (std=="ISO") {
    return(new_waveband(380, 760, wb.name="VIS.ISO", wb.label="VIS"))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}
