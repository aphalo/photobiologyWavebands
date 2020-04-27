#' Normalized Vegetation Index
#'
#' Compute the NDVI from spectral reflectance according to waveband definitions
#' from standards or corresponding to satellite imagers.
#'
#' @param x reflectance_spct or reflectance_mspct object.
#' @param imager character Name of the imager or standard to be used.
#' @param wb.trim logical Flag telling if wavebands crossing spectral data
#'   boundaries are trimmed or ignored.
#'
#' @details NDVI is used in remote sensing to the diagnose the condition of
#'   vegetation, including crops. It is used for Landsat imagery but also at
#'   the farm or plot scale using cameras on drones. It is computed as:
#'
#'   NDVI = (NIR - Red) / (NIR + Red)
#'
#'   The waveband ranges used to compute reflectance vary. Even the imagers
#'   in the different Landsat satellites 1 to 8 have had somehow different
#'   wavelength sensitivities. The \code{NDVI()} function uses the waveband
#'   constructors \code{\link{Red}} and \code{\link{NIR}} defined in this
#'   package. Reflectance is averaged over the wavebands using function
#'   \code{\link[photobiology]{reflectance}}.
#'
#' @note The value passed as argument to \code{imager} must be a valid argument
#'   for both \code{\link{Red}} and \code{\link{NIR}}.
#'
#' @return A numeric vector.
#'
#' @export
#'
NDVI <- function(x, imager = "LandsatOLI", wb.trim = FALSE) {
  if (is.generic_mspct(x)) {
    msaply(x, .fun = NDVI, imager = imager, wb.trim = wb.trim)
  } else if (is.reflector_spct(x) || is.object_spct(x)) {
    # LC8NDVI, LE7NDVI, LT5NDVI, or LT4NDVI
    Red.band <- Red(std = imager)
    NIR.band <- NIR(std = imager)
    if (wl_min(x) > wl_min(Red.band) || wl_max(x) < wl_max(NIR.band)) {
      NA_real_
    } else {
      Rfr.Red <- as.numeric(reflectance(x, Red.band))
      Rfr.NIR <- as.numeric(reflectance(x, NIR.band))
      (Rfr.NIR - Rfr.Red) / (Rfr.NIR + Rfr.Red)
    }
  } else {
    warning("'NDVI' is not defined for ", class(x))
    NA_real_
  }
}

