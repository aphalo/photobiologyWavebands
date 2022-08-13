#' Constructor of lists of wavebands matching Landsat imagers
#'
#' Defined according as ranges of wavelengths according to NASA and USGS
#' manuals. The definitions are as \emph{rectangular} windows, while
#' the true response functions deviate to some extent from these ideal
#' definitions.
#'
#' See \url{https://landsat.usgs.gov/spectral-characteristics-viewer} for
#' detailed sensitivity spectra for the different bands of the imaginers.
#'
#' @param std a character string "L1"..."L9", for missions, "LandsarRBV",
#'   "LandsatMSS", etc. for imagers.
#'
#' @return a list of wavebands
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' Landsat_bands("L1")
#' Landsat_bands("L8")
#' OLI_bands()
#' TIRS_bands()
#'
#' @family lists of unweighted wavebands
#'
Landsat_bands <- function(std = "L8") {
  if (! std %in% c("L1", "L2", "L3", "L4", "L5", "L6", "L7", "L8", "L9")) {
    warning("'std' = '", std, "' not implemented.")
    list()
  } else {
    suppressWarnings(
      c(RBV_bands(std),
        MSS_bands(std),
        ETM_bands(std),
        OLI_bands(std),
        TIRS_bands(std))
    )
  }
}

#' @rdname Landsat_bands
#'
#' @export
#'
RBV_bands <- function(std = "LandsatRBV") {
  if (std %in% c("L1", "L2")) {
    std = "LandsatRBV"
  }
  if (std == "LandsatRBV") {
    list(Green(std), Red(std), NIR(std))
  } else if (std == "L3") {
    list(VIS("LandsatRBV"))
  } else {
    warning("'std' = '", std, "' not implemented.")
    list()
  }
}

#' @rdname Landsat_bands
#'
#' @export
#'
MSS_bands <- function(std = "LandsatMSS") {
  if (std %in% c("L1", "L2", "L3", "L4", "L5")) {
    std = "LandsatMSS"
  }
  if (std == "LandsatMSS") {
    list(Green(std), Red(std), NIR(std))
  } else {
    warning("'std' = '", std, "' not implemented.")
    list()
  }
}

#' @rdname Landsat_bands
#'
#' @export
#'
OLI_bands <- function(std = "LandsatOLI") {
  if (std %in% c("L8", "L9")) {
    std <- "LandsatOLI"
  }
  if (std == "LandsatOLI") {
    list(Purple(std), Blue(std), Green(std), Red(std),
         NIR(std), SWIR1(std), SWIR2(std))
  } else {
    warning("'std' = '", std, "' not implemented.")
    list()
  }
}

#' @rdname Landsat_bands
#'
#' @export
#'
TIRS_bands <- function(std = "LandsatTIRS") {
  if (std %in% c("L8", "L9")) {
    std <- "LandsatTIRS"
  }
  if (std == "LandsatTIRS") {
    list(TIR1(std), TIR2(std))
  } else {
    warning("'std' = '", std, "' not implemented.")
    list()
  }
}

#' @rdname Landsat_bands
#'
#' @export
#'
ETM_bands <- function(std = "LandsatETM") {
  if (std %in% c("L4", "L5")) {
    std <- "LandsatTM"
  } else if (std %in% c("L6", "L7")) {
    std <- "LandsatETM"
  }

  if (std %in% c("LandsatTM", "LandsatETM")) {
    list(Blue(std), Green(std), Red(std), NIR(std), SWIR1(std), SWIR2(std))
  } else {
    warning("'std' = '", std, "' not implemented.")
    list()
  }
}

