#' Calculate UV Index (UVI) from spectral irradiance
#'
#' @param spct a \code{source.spct} object
#' @param std character One of "WWO", "NOAA".
#' @param integer_UVI logical Return a positive integer value according to WWO
#'   recommended practice or a numeric value.
#'
#' @return depending on the argument passed to \code{integer_UVI}, a numeric
#'   (\code{FALSE}) or integer (\code{TRUE}) value for the unitless UVI.
#'
#' @note The default is to return a numeric value not rounded into a value in
#'   the integer-number based recommended UVI scale. This is done to avoid loss
#'   of precision in cases when additional operations, such as averaging, are
#'   applied to the UVI values.
#'
#' @description UVI (UV Index) is a unitless quantity based on erythema
#'   biological spectral weighting function (BSWF), that gives an easy to
#'   interpret UV measure, mainly meant for informing general public about
#'   sunburn risk.
#'
#' @details Two different definitions of UV Index are implemented in this
#'   package. Setting std="NOAA" follows the definition in Kiedron et al. (2007)
#'   but using CIE98 as SWF. NOAA definition discards wavelengths shorter than
#'   286.5 nm as when calculated based on spectral data from Brewer instruments.
#'   "WMO" uses the internationally accepted lower limit at 250 nm (see WHO,
#'   2002). "NOAA" is the default as this is safer with noisy data for solar
#'   radiation measured at ground level, and in this case the value of UVI
#'   should be correct, and almost identical except for errors caused by noise
#'   at shorter wavelengths. However, when calculating UVI from radiation
#'   spectra from UV lamps, "WMO" should be used, as most UV lamps do emit some
#'   radiation between 250 nm and 286.5 nm.
#'
#' @references World Health Organization, World Meteorological Organization,
#'   United Nations Environment Programme & International Commission on
#'   Non-Ionizing Radiation Protection.  (2002) Global Solar UV Index: A
#'   Practical Guide. World Health Organization, Geneva. ISBN 9241590076.
#'   \url{https://apps.who.int/iris/handle/10665/42459}
#'
#' P. Kiedron, S. Stierle and K. Lantz (2007) Instantaneous UV Index and Daily
#' UV Dose Calculations. NOAA-EPA Brewer Network.
#' \url{https://www.esrl.noaa.gov/gmd/grad/neubrew/docs/UVindex.pdf}
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}} and
#'   \code{\link{UVI_wb}}
#'
#' @examples
#' UVI(sun.spct)
#' UVI(sun.spct, "WMO")
#' UVI(sun.spct, integer_UVI = TRUE)
#'
UVI <- function(spct, std = "NOAA", integer_UVI = FALSE) {
  z <- e_irrad(spct, w.band = UVI_wb(std), wb.trim = TRUE) * 40.0
  if (z < 0) {
    if (z < -1e-2) {
      warning("Negative uVI value forced to 0.")
    }
    z <- 0
  }
  if (integer_UVI) {
    round(z, digits = 0)
  } else {
    z
  }
}
