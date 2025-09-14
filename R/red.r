#' Constructor of red waveband
#'
#' Wavelength-range definitions for \emph{red} light according to ISO or as
#' commonly used in plant or remote sensing applications.
#'
#' @param std a character string, one of "ISO", "Smith10", "Smith20", "Inada",
#'   "Warrington", "Sellaro", "RS", "LandsatOLI", "LandsatTM", "LandsatETM",
#'   "LandsatMSS", and "LandsatRBV".
#'
#' @return a waveband object defining a wavelength range.
#'
#' @details The different arguments passed to formal parameter \code{std}
#'   determine the range of wavelengths set as boundaries of the returned
#'   \code{waveband} object; \code{"ISO"} is an standardized definition based on
#'   human colour vision; \code{"Smith10"}, \code{"Smith20"}, \code{"Inada"},
#'   \code{"Warrington"}, \code{"Sellaro"}, \code{"Broad"} and \code{"Apogee"}
#'   are non-standard but used in plant sciences; \code{"RS"} is non-standard
#'   but frequently used in remote sensing; the remaining definitions are for
#'   the published wavelength sensitivity range of imagers (cameras) in the
#'   Landsat satellite missions.
#'
#'   In plant photobiology the definitions proposed by Prof. Harry Smith are the
#'   most widely used, specially to compute a red to far-red photon ratio
#'   relevant to phytochrome photoreceptors. However, other authors have used
#'   different definitions in their publications. "Smith10" (655-665 nm),
#'   "Smith20" (650-670 nm), "Inada" (600-700 nm), "Warrington" (625-675 nm),
#'   and "Sellaro" (620-680 nm). "Apogee" (645-665 nm) is a definition given by
#'   a sensor manufacturer that is shifted by 5 nm compared to "Smith20".
#'
#' @note The bands are defined as square windows, these can be applied to
#'   spectral data to obtain the "true" values, but they do not simulate the
#'   sensitivity of broad-band sensors or the spectral transmittance of ionic
#'   filters. Some band-pass interference filters may have very sharp cut-in and
#'   cut-off, and their effect can be approximated by a square window, but
#'   filters based on light absorption will show gradual tails and bell-shaped
#'   wavelength-windows. The Landsat instruments have very steep cut-in and
#'   cut-off slopes and are well approximated.
#'
#' @export
#'
#' @references
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
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' Red()
#' Red("ISO")
#' Red("Smith")
#' Red("Sellaro")
#'
#' e_irrad(sun.spct, Red()) # W m-2
#' q_irrad(sun.spct, Red()) # mol m-2
#' q_irrad(sun.spct, Red(), scale.factor = 1e6) # umol m-2
#'
#' @family unweighted wavebands
#'
Red <- function(std = "ISO") {
  label = "Red"
  if (std == "Smith") {
    message(
      "The definition of 'Smith' defaults to 'Smith10'."
    )
    std <- "Smith10"
  }
  if (std == "ISO") {
    new_waveband(610,
                 760,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = label)
  } else if (std == "Smith20") {
    new_waveband(650,
                 670,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = "R")
  } else if (std == "Smith10") {
    new_waveband(655,
                 665,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = "R")
  } else if (std == "Inada") {
    new_waveband(600,
                 700,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = "R")
  } else if (std == "Warrington") {
    new_waveband(625,
                 675,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = "R")
  } else if (std == "Sellaro") {
    new_waveband(620,
                 680,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatOLI" || std == "RS") {
    new_waveband(630,
                 680,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatETM" || std == "LandsatTM") {
    new_waveband(630,
                 690,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatMSS") {
    new_waveband(600,
                 700,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatRBV") {
    new_waveband(580,
                 680,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = label)
  } else if (std == "Apogee") {
    new_waveband(645,
                 665,
                 wb.name = paste("Red", std, sep = "."),
                 wb.label = label)
  } else if (tolower(std) == "broad") {
    new_waveband(600,
                 700,
                 wb.name = "Red.broad",
                 wb.label = "Red")
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}
