#' Definition of list of VIS wavebands
#'
#' Defined according to "ISO".
#'
#' @usage Blue(std="ISO")
#' @param std a character string "ISO", or "Sellaro"
#' @return a list defining the wavelength range
#' @export
#'
#' @references
#' Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A. R., Robson, T. M.,
#' Rosenqvist, E. (Eds.). (2012). Beyond the Visible: A handbook of best
#' practice in plant UV photobiology (1st ed., p. xxx + 174).
#' Helsinki: University of Helsinki, Department of Biosciences,
#' Division of Plant Biology. ISBN 978-952-10-8363-1 (PDF),
#' 978-952-10-8362-4 (paperback). Open access PDF download available at
#' http://hdl.handle.net/10138/37558
#'
#' ISO (2007) Space environment (natural and artificial) - Process for determining
#' solar irradiances. ISO Standard 21348. ISO, Geneva.
#'
#'
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' Blue()
#' Blue("ISO")
#' Blue("Sellaro")
Blue <- function(std="ISO"){
  label="Blue"
  if (std=="ISO") {
    return(new_waveband(450,500, wb.name=paste("Blue", std, sep="."), wb.label=label))
  } else if (std=="Sellaro"){
    return(new_waveband(420,490, wb.name=paste("Blue", std, sep="."), wb.label=label))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}
