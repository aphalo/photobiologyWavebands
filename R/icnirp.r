#' Constructor of UV health hazard weighted waveband
#'
#' Waveband constructor for ICNIRP UV health hazard 2004 BSWF.
#'
#' @details This BSWF is used for the determination of exposure limits (EL) for
#'   workers, and includes a safety margin as it is based on eye and the
#'   non-pathologic response of the most sensitive human skin types when not
#'   tanned. Values are interpolated according to equations 2a, 2b and 2c in
#'   ICNIRP (2004), which cover the range 210 nm to 400 nm.
#'
#' \strong{The program code is provided as is, with no guarantee of suitability
#' for any purpose, and should under no circumstances be used to assess
#' actual health hazards.}
#'
#' @note
#' The weights at 180, 190, 200 and 205 nm are presented only in tabular in
#' ICNIRP (2004) and all values at wavelengths < 210 nm taken as \code{NA}.
#'
#' Standard DIN 5031-10:2018-03 defines BSWF \emph{uvh} as a table of
#' interpolated values derived from ICNIRP UV health hazard. So, the values
#' computed using this R package do not necessarily exactly match those
#' according to DIN 5031-10:2018-03. The range of wavelengths used here, 210 to
#' 400 nm, does not agree, with those in the standard: 180 to 400 nm.
#'
#' @param std a character string "ICNIRP".
#' @param norm normalization wavelength (nm)
#' @param w.low short-end boundary wavelength (nm)
#' @param w.high long-end boundary wavelength (nm)
#'
#' @return a waveband object defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @references
#'   INTERNATIONAL COMMISSION ON NON-IONIZING RADIATION PROTECTION (2004) ICNIRP
#'   GUIDELINES ON LIMITS OF EXPOSURE TO ULTRAVIOLET RADIATION OF WAVELENGTHS
#'   BETWEEN 180 nm AND 400 nm (INCOHERENT OPTICAL RADIATION). HEALTH PHYSICS
#'   87(2):171-186.
#'   \url{https://www.icnirp.org/cms/upload/publications/ICNIRPUV2004.pdf}
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' ICNIRP()
#' UV_health_hazard()
#' UV_health_hazard("ICNIRP")
#'
#' @family BSWF weighted wavebands
#'
UV_health_hazard <- function(std = "ICNIRP",
                             norm = 270,
                             w.low = 210,
                             w.high = 400) {
  if (std == "ICNIRP") {
    new_waveband(w.low = w.low,
                 w.high = w.high,
                 weight = "SWF",
                 SWF.e.fun = ICNIRP_e_fun,
                 SWF.norm = 270,
                 norm = norm,
                 hinges = c(210 - 1e-12, 210, 270, 270 + 1e-12, 300, 300 + 1e-12, 400, 400 + 1e-12),
                 wb.name = paste("ICNIRP", as.character(norm), sep = "."),
                 wb.label = "ICNIRP")
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}

#' @rdname UV_health_hazard
#'
#' @export
#'
# for backwards compatibility
ICNIRP <- function(norm = 270,
                   w.low = 210,
                   w.high = 400) {
  UV_health_hazard(std = "ICNIRP",
                   norm = norm,
                   w.low = w.low,
                   w.high = w.high)
}
