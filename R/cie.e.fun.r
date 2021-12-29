#' Gives values for the erythemal BSWF as a function of wavelength
#'
#' This function gives a set of numeric multipliers that can be used
#' as a weight to calculate effective doses and irradiances. The
#' returned values are on quantum based effectiveness relative units.
#'
#' @param w.length numeric array of wavelengths (nm)
#'
#' @return a numeric array of the same length as \code{w.length} with values for
#'   the BSWF normalized as in the original source (298 nm) and based on energy
#'   effectiveness.
#'
#' @export
#' @examples
#' CIE_e_fun(293:400)
#'
#' @family BSWF functions
#'
CIE_e_fun <- function(w.length) {
  # empty vector
  CIE.energy <- numeric(length(w.length))
  # leftmost segment
  CIE.energy[w.length <= 298] <- 1
  # second segment
  selector <- (w.length > 298) & (w.length <= 328)
  CIE.energy[selector] <-
    10 ^ (0.094 * (298 - w.length[selector]))
  # third segment
  selector <- (w.length > 328) & (w.length <= 400)
  CIE.energy[selector] <-
    10 ^ (0.015 * (139 - w.length[selector]))
  # rightmost segment
  CIE.energy[w.length > 400] <- 0

  CIE.energy
}

