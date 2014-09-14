#' Definition of purple waveband
#'
#' Purple radiation (360...450 nm), no weighting
#' applied.
#'
#' @usage Purple(std="ISO")
#' @param std a character string "ISO"
#' @export
#' @references
#' ISO-21348
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' Purple()
#' Purple("ISO")
Purple <- function(std="ISO"){
  if (std=="ISO") {
    return(new_waveband(360,450, wb.name="Purple.ISO", wb.label="Purple"))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}
