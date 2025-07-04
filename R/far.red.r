#' Constructor of far-red waveband
#'
#' Wavelength-range definitions for \emph{far-red} light according as
#' commonly used in plant or remote sensing applications.
#'
#' @details The different arguments passed to formal parameter \code{std}
#'   determine the range of wavelengths set as boundaries of the returned
#'   \code{waveband} object; far-red in not defined by \code{"ISO"} standard
#'   definitions based on human colour vision, and included under red;
#'   \code{"Smith10"}, \code{"Smith20"}, \code{"Inada"}, \code{"Warrington"},
#'   \code{"Sellaro"}, \code{"Broad"} and \code{"Apogee"} are non-standard but used in plant
#'   sciences; \code{"RedEdge20"} and \code{"RedEdge40"} are non-standard but
#'   frequently used in remote sensing.
#'
#'   In plant photobiology the definitions proposed by Prof. Harry Smith are the
#'   most widely used, specially to compute a red to far-red photon ratio
#'   relevant to phytochrome photoreceptors. However, other authors have used
#'   different definitions in their publications. "Smith10" (725-735 nm),
#'   "Smith20" (720-740 nm), "Inada" (700-800 nm), "Warrington" (700-850 nm),
#'   and "Sellaro" (700-750 nm). "Apogee" is a definition given by a sensor
#'   manufacturer that matches "Smith20" for far-red.
#'
#'   Other definitions used in remote sensing. For example the "red edge" is to
#'   detect the condition of vegetation based on light reflectance by green
#'   vegetation. These bands are centred at the reflectance transition in the
#'   far-red band (725 nm), and here we define "RedEdge40" (705-745 nm) and
#'   "RedEdge20" (715-735 nm).
#'
#' @note The bands are defined as square windows, these can be applied to
#'   spectral data to obtain the "true" values, but they do not simulate the
#'   sensitivity of broad-band sensors or the spectral transmittance of ionic
#'   filters. Some band-pass interference filters may have very sharp cut-in and
#'   cut-off, and their effect can be approximated by a square window, but
#'   filters based on light absorption will show gradual tails and bell-shaped
#'   wavelength-windows.
#'
#' @seealso \code{\link{NIR}} for wavebands close to the boundary between red
#'   and infrared regions.
#'
#' @param std a character string, defaults to "ISO", as for other colour
#'   definitions, which in this case returns \code{NA}.
#'
#' @return A waveband object defining a wavelength range.
#'
#' @references
#'
#' Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A. R., Robson,
#' T. M., Rosenqvist, E. (Eds.). (2012). Beyond the Visible: A handbook of best
#' practice in plant UV photobiology (1st ed., p. xxx + 174). Helsinki:
#' University of Helsinki, Department of Biosciences, Division of Plant Biology.
#' ISBN 978-952-10-8363-1 (PDF), 978-952-10-8362-4 (paperback). Open access PDF
#' download available at \doi{10.31885/9789521083631}.
#'
#' ISO (2007) Space environment (natural and artificial) - Process for
#' determining solar irradiances. ISO Standard 21348. ISO, Geneva.
#'
#' Murakami, K., Aiga I. (1994) Red/Far-red photon flux ratio used as an index
#' number for morphological control of plant growth under artificial lighting
#' conditions. Proc. Int. Symp. Artificial Lighting, Acta Horticulturae, 418,
#' ISHS 1997.
#'
#' Sellaro, R., Crepy, M., Trupkin, S. A., Karayekov, E., Buchovsky, A. S.,
#' Rossi, C., & Casal, J. J. (2010). Cryptochrome as a sensor of the blue/green
#' ratio of natural radiation in Arabidopsis. Plant physiology, 154(1), 401-409.
#' \doi{10.1104/pp.110.160820}.
#'
#' Smith, H. (1982) Light quality, photoperception and plant strategy. Annual
#' Review of Plant Physiology, 33:481-518.
#' \doi{10.1146/annurev.pp.33.060182.002405}
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
#' e_irrad(sun.spct, Far_red("Smith10")) # W m-2
#' q_irrad(sun.spct, Far_red("Smith10")) # mol m-2
#' q_irrad(sun.spct, Far_red("Smith10"), scale.factor = 1e6) # umol m-2
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
  } else if (std %in% c("Smith20", "Apogee")) {
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
