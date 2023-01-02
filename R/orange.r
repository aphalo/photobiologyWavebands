#' Constructor of orange waveband
#'
#' Wavelength-range definition for \emph{orange} radiation according to ISO.
#'
#' @details Orange radiation (591...610 nm) as defined in ISO standards based
#'   on human colour vision.
#'
#' @param std a character string "ISO"
#'
#' @return A waveband object defining a wavelength range.
#'
#' @references
#' ISO (2007) Space environment (natural and artificial) - Process for
#' determining solar irradiances. ISO Standard 21348. ISO, Geneva.
#'
#' @export
#'
#' @examples
#' Orange()
#' Orange("ISO")
#'
#' e_irrad(sun.spct, Orange()) # W m-2
#' q_irrad(sun.spct, Orange()) # mol m-2
#' q_irrad(sun.spct, Orange(), scale.factor = 1e6) # umol m-2
#'
#' @family unweighted wavebands
#'
Orange <- function(std = "ISO") {
  if (std == "ISO") {
    new_waveband(
      w.low = 591,
      w.high = 610,
      wb.name = "Orange.ISO",
      wb.label = "Orange"
    )
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}
