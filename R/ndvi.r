#' Normalized Difference Vegetation Index
#'
#' Compute the NDVI from spectral reflectance according to waveband definitions
#' from standards or corresponding to satellite imagers.
#'
#' @param spct reflectance_spct or reflectance_mspct object.
#' @param imager character Name of the imager or standard to be used. One of
#'   \code{"LandsatOLI"}, \code{"Sentinel2MSI"}, \code{"Sentinel2MSIb"},
#'   or \code{ApogeeNDVI}. If a vector of length two, the first member is passed
#'   as argument to \code{Red()} and the second member is passed as argument to
#'   \code{NIR()}.
#'
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
#'   in the different Landsat satellites 1 to 8 have had to an extent different
#'   wavelength sensitivities. The \code{NDVI()} function uses the waveband
#'   constructors \code{\link{Red}} and \code{\link{NIR}} defined in this
#'   package. Reflectance is averaged over the wavebands using function
#'   \code{\link[photobiology]{reflectance}}. Apogee sells a broadband
#'   NDVI sensor, the definition given here is not an spectral response
#'   but instead a wavelength range.
#'
#' @note The value passed as argument to \code{imager} must be a valid argument
#'   for both \code{\link{Red}} and \code{\link{NIR}}. If the desired return
#'   value is a data frame, function \code{\link[photobiology]{NDxI}} can be
#'   used to flexibly compute NDVI and any similar index.
#'
#' @return A numeric vector.  When the wavelength range of \code{spct} does not
#'   fully overlap with both wavebands \code{NA} is silently returned.
#'
#' @export
#'
NDVI <- function(spct, imager = "LandsatOLI", wb.trim = FALSE) {
  imager <- rep_len(imager, length.out = 2)
  if (is.generic_mspct(spct)) {
    msaply(spct, .fun = NDVI, imager = imager, wb.trim = wb.trim)
  } else if (is.reflector_spct(spct) || is.object_spct(spct)) {
    # LC8NDVI, LE7NDVI, LT5NDVI, or LT4NDVI
    Red.band <- Red(std = imager[1])
    NIR.band <- NIR(std = imager[2])
    if (wl_min(spct) > wl_min(Red.band) || wl_max(spct) < wl_max(NIR.band)) {
      message("Missing wavelengths in spectrum! Found: ",
              wl_min(spct), " to ", wl_max(spct), " nm, while ",
              wl_min(Red.band), " to ", wl_max(NIR.band), " nm needed")
      NA_real_
    } else {
      Rfr.Red <- as.numeric(reflectance(spct, Red.band))
      Rfr.NIR <- as.numeric(reflectance(spct, NIR.band))
      (Rfr.NIR - Rfr.Red) / (Rfr.NIR + Rfr.Red)
    }
  } else {
    warning("'NDVI' is not defined for ", class(spct))
    NA_real_
  }
}
