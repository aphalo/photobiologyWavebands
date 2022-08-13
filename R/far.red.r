#' Constructor of far-red waveband
#'
#' Far-red radiation has no standardized definitions. Far-red is important in photobiology of plants
#' mainly in relation to the phytochrome photoreceptors. The definitions proposed
#' by Prof. Harry Smith are the most widely used, specially to compute a red to
#' far-red photon ratio. However, other authors have used different definitions
#' in their publications. These other definitions are preferred in situations
#' where phytochromes are not the target of study. For example the "red edge"
#' is is used in remote sensing to detect the condition of vegetation.
#' plant photobiology, "Smith10" (725-735 nm), "Smith20" (720-740 nm), "Inada"
#' (700-800 nm), "Warrington" (700-850 nm), and "Sellaro" (700-750 nm). The
#' red-edge used in remote sensing of vegetation is centred at the reflectance
#' transition in the far-red band (725 nm), we define "RedEdge40"
#' (705-745 nm) and "RedEdge20" (715-735 nm).
#'
#' @note The bands are defined as square windows, these can be applied to
#'   spectral data to obtain the "true" values, but they do not simulate the
#'   sensitivity of broad-band sensors or the spectral transmittance of ionic
#'   filters. Some band-pass interference filters may have very sharp cut-in and
#'   cut-off, and their effect can be approximated by a square window, but
#'   filters based on light absorption will show gradual tails and bell-shaped
#'   wavelength-windows. The Landsat instruments have very steep cut-in anf
#'   cut-off slopes and are well approximated.
#'
#' @seealso \code{\link{NIR}} for wavebands close to the boundary between red
#'   and infrared regions.
#'
#' @param std a character string, defaults to "ISO", as for other colour
#'   definitions, which in this case returns \code{NA}.
#'
#' @return An object of class \code{waveband}, a class defined in package
#'   'photobiology'.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' Far_red() # no ISO definition exists
#' Far_red("ISO") # no ISO definition exists
#' Far_red("Smith10") # 10 nm wide
#' Far_red("Smith20") # 20 nm wide
#' Far_red("Inada")
#' Far_red("Warrington")
#' Far_red("Sellaro")
#' Far_red("RedEdge40")
#' Far_red("RedEdge20")
#'
#' @family unweighted wavebands
#'
Far_red <- function(std="ISO") {
  label="FR"
  if (std=="Smith") {
    message("The definition of 'Smith' defaults to 'Smith10', to restore old behaviour use 'Smith20'.")
    std <- "Smith10"
  }
  if (std=="ISO") {
    message("'ISO gives no standard definition of far-red.")
    waveband()
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
  } else if (std=="RedEdge40") {
    new_waveband(705, 745, wb.name=paste("FarRed", std, sep="."), wb.label=label)
  } else if (std=="RedEdge20") {
    new_waveband(715, 735, wb.name=paste("FarRed", std, sep="."), wb.label=label)
  } else {
    warning("'std' argument value not implemented.")
    waveband()
  }
}
