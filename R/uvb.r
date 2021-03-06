#' Constructor of UV-B waveband
#'
#' UV-B according to CIE and ISO standrads: 280--315 nm. UV-B according to
#' common non-standard practice: 280--320 nm. UV-B according to medical or
#' dermatological non-standard practice: 280--320 nm.
#'
#' @param std a character string "CIE", "ISO", "medical" or "none"
#'
#' @return a waveband object wavelength defining a wavelength range.
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
#' @examples
#' UVB()
#' UVB("ISO")
#' UVB("CIE")
#' UVB("none")
#' UVB("medical")
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
    NA
  }
}
