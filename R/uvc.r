#' Constructor of ultraviolet-C waveband
#'
#' Wavelength-range definitions for \emph{ultraviolet-C (UV-C)} radiation, by
#' default according to ISO or as commonly used in different application areas.
#'
#' @details Implemented definitions.  UV-C according to CIE and ISO standards:
#'   100--280 nm. UV-c according to common non-standard practice: 200--280 nm.
#'   UV-C according to medical or dermatological non-standard practice, e.g.
#'   Diffey (1991): 200--290 nm.
#'
#' @param std a character string "CIE", "ISO", "none", or "medical".
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
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
#' UVC()
#' UVC("CIE")
#' UVC("ISO")
#' UVC("none")
#' UVC("medical")
#'
#' @family unweighted wavebands
#'
UVC <- function(std = "ISO") {
  label <- "UVC"
  if (std == "ISO" || std == "CIE") {
    new_waveband(
      w.low = 100,
      w.high = 280,
      wb.name = paste(label , std, sep = "."),
      wb.label = label
    )
  } else if (std == "medical") {
    new_waveband(
      w.low = 220,
      w.high = 290,
      wb.name = paste(label, std, sep = "."),
      wb.label = label
    )
  } else if (std == "none") {
    new_waveband(
      w.low = 200,
      w.high = 280,
      wb.name = paste(label, std, sep = "."),
      wb.label = label
    )
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}
