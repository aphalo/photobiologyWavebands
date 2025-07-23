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
#' @seealso \code{\link[photobiology]{waveband}}, \code{\link{UVB}},
#'   \code{\link{UVA}}, \code{\link{Blue}}, \code{link{Green}},
#'   \code{\link{Red}}, \code{\link{Far_red}} and \code{\link{PAR}}.
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
  if (std %in% c("sensory", "sensory10", "sensory20", "sensoryBroad", "Sellaro")) {
    RFRstd <- c("sensory" = "Smith20",
                "sensory20" = "Smith20",
                "sensory10" = "Smith10",
                "sensoryBroad" = "Smith20",
                "Sellaro" = "Sellaro")[std]
    BGstd <- c("sensory" = "Sellaro",
                "sensory20" = "Sellaro",
                "sensory10" = "Sellaro",
                "sensoryBroad" = "broad",
                "Sellaro" = "Sellaro")[std]
    list(UVB(), UVA2(), UVA1(), Blue(BGstd), Green(BGstd),
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

