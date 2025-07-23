#' Constructor of blue waveband
#'
#' Wavelength-range definitions for \emph{blue} light according to ISO or as
#' commonly used in plant or remote sensing applications.
#'
#' @param std a character string "ISO", "Sellaro", "Broad",
#'  "RS" (remote sensing), or Landsat imagers, "LandsatTM",
#'   "LandsatETM", or "LandsatOLI".
#'
#' @return A waveband object defining a wavelength range.
#'
#' @details The different arguments passed to formal parameter \code{std}
#'   determine the range of wavelengths set as boundaries of the returned
#'   \code{waveband} object; \code{"ISO"} is standardized
#'   definition based on human colour vision; \code{"Sellaro"} and
#'   \code{"Broad"} are non-standard but used in plant sciences; \code{"RS"} is
#'   non-standard but frequently used in remote sensing; the remaining
#'   definitions are for the published wavelength sensitivity range of imagers
#'   (cameras) in the Landsat satellite missions.
#'
#' @export
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
#' Sellaro, R., Crepy, M., Trupkin, S. A., Karayekov, E., Buchovsky, A. S.,
#' Rossi, C., & Casal, J. J. (2010). Cryptochrome as a sensor of the blue/green
#' ratio of natural radiation in Arabidopsis. Plant physiology, 154(1), 401-409.
#' \doi{10.1104/pp.110.160820}.
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
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' Blue()
#' Blue("ISO")
#' Blue("Sellaro")
#'
#' e_irrad(sun.spct, Blue()) # W m-2
#' q_irrad(sun.spct, Blue()) # mol m-2
#' q_irrad(sun.spct, Blue(), scale.factor = 1e6) # umol m-2
#'
#' @family unweighted wavebands
#'
Blue <- function(std = "ISO") {
  label = "Blue"
  if (std == "ISO") {
    new_waveband(450,
                 500,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else if (std == "Sellaro") {
    new_waveband(420,
                 490,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else if (std == "broad") {
    new_waveband(400,
                 500,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatOLI" || std == "RS") {
    new_waveband(450,
                 515,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else if (std == "LandsatETM" || std == "LandsatTM") {
    new_waveband(450,
                 520,
                 wb.name = paste(label, std, sep = "."),
                 wb.label = label)
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}
