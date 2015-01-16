#' Definition of list of VIS wavebands
#'
#' Defined according to "ISO".
#'
#' @usage VIS_bands(std="ISO")
#' @param std a character string "ISO" (ignored)
#' @return a list of wavebands
#' @export
#'
#' @references
#' ISO-21348:2007 Space environment (natural and artificial) -- Process for determining
#' solar irradiances. ISO, Geneva.
#'
#'
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' VIS_bands()
#' VIS_bands("ISO")
#'
VIS_bands <- function(std="ISO"){
  return(list(Purple(std), Blue(std), Green(std), Yellow(std), Orange(std), Red(std)))
}
