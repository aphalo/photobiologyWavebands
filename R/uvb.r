#' Constructor of ultraviolet-B waveband
#'
#' Wavelength-range definitions for \emph{ultraviolet-B, UV-B} radiation, by
#' default according to ISO or as commonly used in different application areas.
#'
#' @details Implemented definitions. UV-B according to CIE and ISO standrads:
#'   280--315 nm. UV-B according to common non-standard practice: 280--320 nm.
#'   UV-B according to medical or dermatological non-standard practice: 280--320
#'   nm.
#'
#' @param std a character string "CIE", "ISO", "medical" or "none"
#'
#' @return a waveband object defining a wavelength range.
#'
#' @note The non-standard definition of UV-B using 320 nm as limit
#' should not be used in any new publications or work as it deviates from
#' the internationally accepted standards and its use leads to confusion. Its
#' inclusion in this package is to allow calculations needed to compare
#' new results and methods against old publications.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @references
#' Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A. R., Robson,
#' T. M., Rosenqvist, E. (Eds.). (2012). Beyond the Visible: A handbook of best
#' practice in plant UV photobiology (1st ed., p. xxx + 174). Helsinki:
#' University of Helsinki, Department of Biosciences, Division of Plant Biology.
#' ISBN 978-952-10-8363-1 (PDF), 978-952-10-8362-4 (paperback). Open access PDF
#' download available at \doi{10.31885/9789521083631}.
#'
#' @examples
#' UVB()
#' UVB("ISO")
#' UVB("CIE")
#' UVB("none")
#' UVB("medical")
#'
#' e_irrad(sun.spct, UVB()) # W m-2
#' q_irrad(sun.spct, UVB()) # mol m-2
#' q_irrad(sun.spct, UVB(), scale.factor = 1e6) # umol m-2
#'
#' @family unweighted wavebands
#'
UVB <- function(std = "ISO") {
  label <- "UVB"
  if (std == "ISO" || std == "CIE") {
    new_waveband(
      w.low = 280,
      w.high = 315,
      wb.name = paste(label, std, sep = "."),
      wb.label = label
    )
  } else if (std == "medical") {
    new_waveband(
      w.low = 290,
      w.high = 320,
      wb.name = paste(label, std, sep = "."),
      wb.label = label
    )
  } else if (std == "none") {
    new_waveband(
      w.low = 280,
      w.high = 320,
      wb.name = paste(label, std, sep = "."),
      wb.label = label
    )
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}

