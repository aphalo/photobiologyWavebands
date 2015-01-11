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
#' ISO-21348
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' VIS()
#' VIS("ISO")
VIS <- function(std="ISO"){
  if (std=="ISO") {
    return(new_waveband(380, 760, wb.name="VIS.ISO", wb.label="VIS"))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}
