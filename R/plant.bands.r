#' Definition of list of wavebands used in plant biology
#'
#' Defined according to different authors.
#'
#' @usage Plant_bands(std = "sensory20")
#'
#' @param std a character string "sensory", "sensory10", "sensory20" or ""
#'
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
#' Plant_bands()
#' Plant_bands("sensory")
#' Plant_bands("sensory10")
#' Plant_bands("sensory20")
#' Plant_bands("")
#'
Plant_bands <- function(std = "sensory20") {
  if (std %in% c("sensory", "sensory10", "sensory20")) {
    if (std == "sensory10") {
      RFRstd <- "Smith10"
    } else {
      RFRstd <- "Smith20"
    }
    return(list(UVB(), UVA(), Blue("Sellaro"), Green("Sellaro"), Red(RFRstd), Far_red(RFRstd)))
  } else if (std %in% c("energy", "")) {
    return(list(UVB(), UVA(), PAR()))
  } else {
    stop("Unrecognized std: '", std, "'")
  }
}

