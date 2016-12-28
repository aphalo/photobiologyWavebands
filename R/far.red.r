#' Constructor of FR waveband
#'
#' Far-red radiation according to "ISO" (not defined) or as commonly defined in
#' plant photobiology, "Smith10" (725-735 nm), "Smith20" (720-740 nm), "Inada"
#' (700-800 nm), "Warrington" (700-850 nm), and "Sellaro" (700-750 nm). No
#' weighting applied.
#'
#' @seealso \code{\link{NIR}} for wavebands close to the boundary between red
#'   and infrared regions.
#'
#' @param std a character string, defaults to "ISO", as for other colour
#'   definitions, which in this case returns \code{NA}.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' Far_red()
#' Far_red("ISO")
#' Far_red("Smith")
#'
#' @family unweighted wavebands
#'
Far_red <- function(std="ISO") {
  label="FR"
  if (std=="Smith") {
    warning("The definition of 'Smith' defaults to 'Smith10', to restore old behaviour use 'Smith20'.")
    std <- "Smith10"
  }
  if (std=="ISO") {
    warning("'ISO gives no standard definition of far-red.")
    NA
  } else if (std=="Smith20") {
    new_waveband(720, 740, wb.name=paste("FarRed", std, sep="."), wb.label=label)
  } else if (std=="Smith10") {
    new_waveband(725, 735, wb.name=paste("FarRed", std, sep="."), wb.label=label)
  } else if (std=="Inada" || std=="LandsatMSS" || std=="RS") {
    new_waveband(700, 800, wb.name=paste("FarRed", std, sep="."), wb.label=label)
  } else if (std=="Warrington") {
    new_waveband(700, 850, wb.name=paste("FarRed", std, sep="."), wb.label=label)
  } else if (std=="Sellaro") {
    new_waveband(700, 750, wb.name=paste("FarRed", std, sep="."), wb.label=label)
  } else {
    warning("'std' argument value not implemented.")
    NA
  }
}
