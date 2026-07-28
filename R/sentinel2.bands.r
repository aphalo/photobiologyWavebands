#' Constructor of lists of wavebands matching Sentinel-2 multi spectral
#' imager (MSI).
#'
#' Defined as ranges of wavelengths according to descriptions in the Sentinel-2
#' MSI manual from ESA. The definitions are as \emph{rectangular} windows, while
#' the true response functions deviate to some extent from these ideal
#' definitions.
#'
#' @details The ground-level spatial resolution of the images depends on the
#'   wavelength, grouped into three resolutions of 10, 20 and 60 m. The
#'   wavelength ranges implemented are the nominal ones which very slightly
#'   differ from the actual ones and between Sentinel-2a and Sentinel-2b
#'   (see \url{https://www.earthdata.nasa.gov/data/instruments/sentinel-2-msi}).
#'
#'   The individual \code{waveband} objects included in the returned \code{list}
#'   objects are constructed with functions \code{\link{Blue}()},
#'   \code{\link{Green}()}, \code{\link{Red}()}, \code{\link{Far_red}()}, and
#'   \code{\link{NIR}()}.
#'
#' @param std a character string "MSI", for the imager, or "10m", "20m", or
#'   "60m" based on image spatial resolution.
#'
#' @references
#' SUHET (2015) SENTINEL-2 User Handbook, ESA Standard Document Date 24/07/2015
#' Issue 1 Rev 2. European Space Agency.
#'
#' @return a list of wavebands
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}()} for a description of the
#'   class and its constructors.
#'
#' @examples
#' Sentinel2_bands()
#' Sentinel2_bands("10m")
#'
#' @family lists of \code{waveband} objects defining wavelength ranges, i.e.,
#'   lacking weighting functions.
#'
Sentinel2_bands <- function(std = "MSI") {
  if (! std %in% c("MSI", "10m", "20m", "60m")) {
    warning("'std' = '", std, "' not implemented.")
    list()
  } else {
    switch(std,
           "10m" = list(B2 = Blue("Sentinel2.B2"),
                        B3 = Green("Sentinel2.B3"),
                        B4 = Red("Sentinel2.B4"),
                        B8 = NIR("Sentinel2.B8")),
           "20m" = list(B5 = Far_red("Sentinel2.B5"),
                        B6 = Far_red("Sentinel2.B6"),
                        B7 = Far_red("Sentinel2.B7"),
                        B8b = NIR("Sentinel2.B8b"),
                        B11 = NIR("Sentinel2.B11"),
                        B12 = NIR("Sentinel2.B12")),
           "60m" = list(B1 = Blue("Sentinel2.B1"),
                        B9 = NIR("Sentinel2.B9"),
                        B10 = NIR("Sentinel2.B10")),
           "MSI" = list(B1 = Blue("Sentinel2.B1"),
                        B2 = Blue("Sentinel2.B2"),
                        B3 = Green("Sentinel2.B3"),
                        B4 = Red("Sentinel2.B4"),
                        B5 = Far_red("Sentinel2.B5"),
                        B6 = Far_red("Sentinel2.B6"),
                        B7 = Far_red("Sentinel2.B7"),
                        B8 = NIR("Sentinel2.B8"),
                        B8b = NIR("Sentinel2.B8b"),
                        B9 = NIR("Sentinel2.B9"),
                        B10 = NIR("Sentinel2.B10"),
                        B11 = NIR("Sentinel2.B11"),
                        B12 = NIR("Sentinel2.B12"))
    )
  }
}
