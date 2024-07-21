#' Constructor of ultraviolet waveband
#'
#' Wavelength-range definition for \emph{ultraviolet (UV)} radiation according
#' to ISO and CIE standards.
#'
#' @details UV: 100--400 nm. The ranges agree between CIE and ISO standards,
#'    thus, the argument passed to parameter \code{std} only affects the labels
#'    in the returned \code{waveband} object.
#'
#' @param std "ISO" or "CIE"
#'
#' @return A waveband object defining a wavelength range.
#'
#' @references
#' Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A. R., Robson,
#' T. M., Rosenqvist, E. (Eds.). (2012). Beyond the Visible: A handbook of best
#' practice in plant UV photobiology (1st ed., p. xxx + 174). Helsinki:
#' University of Helsinki, Department of Biosciences, Division of Plant Biology.
#' ISBN 978-952-10-8363-1 (PDF), 978-952-10-8362-4 (paperback). Open access PDF
#' download available at \doi{10.31885/9789521083631}.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{new_waveband}}  \code{\link[photobiology]{waveband}}
#'
#' @examples
#' UV()
#' UV("ISO")
#'
#' @family unweighted wavebands
#'
UV <- function(std = "ISO") {
  if (std %in% c("ISO", "CIE")) {
    new_waveband(
      w.low = 100,
      w.high = 400,
      wb.name = paste("UV", std, sep = "."),
      wb.label = "UV"
    )
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}
