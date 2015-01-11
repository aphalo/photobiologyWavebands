#' Definition of list of UV wavebands
#'
#' Defined according to "ISO".
#'
#' @usage UV_bands(std="ISO")
#' @param std a character string "ISO" or "none"
#' @return a list of wavebands
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
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' UV_bands()
#' UV_bands("ISO")
#'
UV_bands <- function(std="ISO"){
  if (std=="none") {
    stdc <- "ISO"
  } else {
    stdc <- std
  }
  return(list(UVC(stdc), UVB(std), UVA(std)))
}
