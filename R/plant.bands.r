#' Constructor of lists of wavebands used in plant biology
#'
#' Defined according to different authors.
#'
#' @param std a character string "sensory", "sensory10", "sensory20", "Sellaro", "ISO",
#'   "CIE", "none" or "", where "ISO", "CIE" and "none" affect only the UV
#'   bands.
#'
#' @return a list of wavebands
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' Plant_bands()
#' Plant_bands("sensory")
#' Plant_bands("sensory10")
#' Plant_bands("sensory20")
#' Plant_bands("ISO")
#' Plant_bands("CIE")
#'
#' @family lists of unweighted wavebands
#'
Plant_bands <- function(std = "sensory20") {
  if (std %in% c("sensory", "sensory10", "sensory20", "Sellaro")) {
      RFRstd <- std
      list(UVB(), UVA2(), UVA1(), Blue("Sellaro"), Green("Sellaro"),
         Red(RFRstd), Far_red(RFRstd))
  } else if (std %in% c("ISO", "none")) {
    list(UVB(std), UVA(std), PAR())
  } else if (std  == "CIE") {
    list(UVB(std), UVA2(std), UVA1(std), PAR())
  } else {
    warning("'std' = '", std, "' not implemented.")
    list()
  }
}

