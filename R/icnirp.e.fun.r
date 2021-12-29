#' Values for the ICNIRP BSWF as a function of wavelength
#'
#' This function returns a vector of numeric multipliers that can be used as a
#' weight to calculate effective doses and irradiances. The returned values are
#' on energy based effectiveness relative units. The BSWF is defined for the
#' range 210 nm to 400 nm.
#'
#' @param w.length numeric array of wavelengths (nm)
#'
#' @return a numeric array of the same length as \code{w.length} with values for
#'   the BSWF normalized as in the original source (270 nm) and based on energy
#'   effectiveness.
#'
#' @export
#' @examples
#' ICNIRP_e_fun(210:400)
#'
#' @family BSWF functions
#'
ICNIRP_e_fun <-
  function(w.length) {
    ICNIRP.energy <- numeric(length(w.length))
    # leftmost
    ICNIRP.energy[w.length < 210] <- NA
    # second region
    selector <- (w.length >= 210) & (w.length <= 270)
    ICNIRP.energy[selector] <- 0.959 ^ (270 - w.length[selector])
    # third region
    selector <- (w.length > 270) & (w.length <= 300)
    ICNIRP.energy[selector] <-
      1 - 0.36 * ((w.length[selector] - 270) / 20) ^ 1.64
    # fourth region
    selector <- (w.length > 300) & (w.length <= 400)
    ICNIRP.energy[selector] <-
      0.3 * 0.736 ^ (w.length[selector] - 300) +
      10 ^ (2 - 0.0163 * w.length[selector])
    # rightmost region
    ICNIRP.energy[w.length > 400] <- 0

    ICNIRP.energy
  }

