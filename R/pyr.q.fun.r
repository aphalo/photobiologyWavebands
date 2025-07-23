#' Gives values for mean photosynthesys action spectrum
#'
#' This function gives a set of numeric multipliers that can be used
#' as a weight to calculate effective doses and irradiances.
#'
#' @param w.length numeric array of w.length (nm).
#' @param std character \code{"McCree.field.mean"} or
#'   \code{"McCree.chamber.mean"}.
#'
#' @return a numeric vector of the same length as \code{w.length} with values for
#'   the BSWF normalized to one at 550 nm.  The returned values are
#'   based on quantum effectiveness units.
#'
#' @inherit McCree_mean.mspct details references
#'
#' @export
#' @examples
#' PQYR_q_fun(seq(400, 700, by = 20))
#'
PQYR_q_fun <- function(w.length,
                       std = "McCree.field.mean") {
  wl.within <- w.length >= 350 & w.length <= 750
  spectral_weights <- rep(NA_real_, length(w.length))
  if (any(wl.within)) {
    # avoids error in spline when xout is empty
    tmp.spct <- photobiologyWavebands::McCree_mean.mspct[[std]]
    spectral_weights[wl.within] <-
      stats::spline(
        tmp.spct$w.length,
        tmp.spct$s.q.response,
        xout = w.length[wl.within]
      )$y
  }
  spectral_weights
}

#' @rdname PQYR_q_fun
#'
PQYR_fld_q_fun <- function(w.length) {
  PQYR_q_fun(w.length = w.length,
             std = "McCree.field.mean")
}

#' @rdname PQYR_q_fun
#'
PQYR_chb_q_fun <- function(w.length) {
  PQYR_q_fun(w.length = w.length,
             std = "McCree.chamber.mean")
}
