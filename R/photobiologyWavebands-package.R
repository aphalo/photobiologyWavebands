#' Quantification of ultraviolet, visible and infrared radiation for photobiology
#'
#' Calculation of quantities relevant to the effects of radiation on different
#' organisms and biological processes from spectral data. The package is designed
#' to complement package \code{photobiology}.
#'
#' @docType package
#' @keywords misc
#' @name photobiologyWavebands-package
#' @author Pedro J. Apahalo
#' @details
#' \tabular{ll}{
#' Package: \tab photobiologyWavebands\cr
#' Type: \tab Package\cr
#' Version: \tab 0.2.4\cr
#' Date: \tab 2015-01-11\cr
#' License: \tab GPL (>2.0)\cr
#' }
#' @references
#' Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A. R., Robson, T. M.,
#' Rosenqvist, E. (Eds.). (2012). Beyond the Visible: A handbook of best
#' practice in plant UV photobiology (1st ed., p. xxx + 174).
#' Helsinki: University of Helsinki, Department of Biosciences,
#' Division of Plant Biology. ISBN 978-952-10-8363-1 (PDF),
#' 978-952-10-8362-4 (paperback). Open access PDF download available at
#' http://hdl.handle.net/10138/37558
#'
#' Sellaro, R., Crepy, M., Trupkin, S. A., Karayekov, E., Buchovsky, A. S.,
#' Rossi, C., & Casal, J. J. (2010). Cryptochrome as a sensor of the
#' blue/green ratio of natural radiation in Arabidopsis. Plant physiology,
#' 154(1), 401-409. doi:10.1104/pp.110.160820
#'
#' Smith, H (19xx)
#'
#' ISO (2007) Space environment (natural and artificial) - Process for determining
#' solar irradiances. ISO Standard 21348. ISO, Geneva.
#'
#' @note This package replaces the packages photobiologyUV and photobiologyVIS.
#' @import photobiology
#' @examples
#'
#' q_irrad(sun.spct, PAR())  # PAR photon irradiance
#' q_irrad(sun.spct, Blue("ISO")) # blue photon irradiance, ISO definition
#' q_irrad(sun.spct, Blue("Sellaro")) # blue photon irradiance, Sellaro et al.'s definition
#' e_irrad(sun.spct, VIS()) # VIS irradiance, ISO definition
#' q_irrad(sun.spct, VIS()) # VIS photon, ISO definition
NULL
