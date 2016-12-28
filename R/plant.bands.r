#' Constructor of lists of wavebands used in plant biology
#'
#' Defined according to different authors.
#'
#' @param std a character string "sensory", "sensory10", "sensory20", "ISO",
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
#' Plant_bands("")
#'
#' @family lists of unweighted wavebands
#'
Plant_bands <- function(std = "sensory20") {
  if (std == "") {
    std == "ISO"
  }
  if (std %in% c("sensory", "sensory10", "sensory20")) {
    if (std == "sensory10") {
      RFRstd <- "Smith10"
    } else {
      RFRstd <- "Smith20"
    }
    list(UVB(), UVA(), Blue("Sellaro"), Green("Sellaro"),
         Red(RFRstd), Far_red(RFRstd))
  } else if (std %in% c("ISO", "none")) {
    list(UVB(std), UVA(std), PAR())
  } else if (std  == "CIE") {
    list(UVB(std), UVA1(std), UVA2(std), PAR())
  } else {
    warning("'std' = '", std, "' not implemented.")
    list()
  }
}

