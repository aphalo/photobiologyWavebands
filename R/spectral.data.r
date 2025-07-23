#' Setlow's action spectrum for DNA damage
#'
#' A dataset containing the wavelengths at a 0.1 nm interval. Tabulated values
#' for Setlow's naked DNA damage action spectrum as used in the TUV model.
#'
#' The variables are as follows:
#'
#' \itemize{
#'   \item w.length (nm)
#'   \item s.e.response
#' }
#'
#' @docType data
#' @keywords datasets
#' @format A response.spct object with 1082 rows and 2 variables
#'
#' @references
#' \url{https://web.archive.org/web/20220130091146/http://uv.biospherical.com/Version2/description-Version2-Database3.html} downloaded 2015-02-07
"SetlowTUV.spct"

#' CIE2008 luminous efficiency function (2-deg) (photopic human vision)
#'
#' A dataset containing the wavelengths at a 1 nm interval.
#' Tabulated values for quantum luminous efficiency according to CIE2008 for 2 degrees.
#'
#' The variables are as follows:
#'
#' \itemize{
#'   \item w.length (nm)
#'   \item s.q.response
#' }
#'
#' @docType data
#' @keywords datasets
#' @format A response.spct object with 441 rows and 2 variables
#' @references
#' \url{http://www.cvrl.org/} downloaded on 2015-01-24
"CIE2008_lef2deg.spct"

#' CIE1924 luminous efficiency function (photopic human vision)
#'
#' A dataset containing the wavelengths at a 1 nm interval.
#' Tabulated values for quantum luminous efficiency according to CIE1924.
#'
#' The variables are as follows:
#'
#' \itemize{
#'   \item w.length (nm)
#'   \item s.q.response
#' }
#'
#' @docType data
#' @keywords datasets
#' @format A response.spct object with 471 rows and 2 variables
#'
#' @note This luminous efficiency function understimates the renponse to short
#'   wavelengths.
#' @references
#'  \url{http://www.cvrl.org/} downloaded on 2015-01-24
"CIE1924_lef.spct"

#' Luminous efficiency function (scotopic human vision)
#'
#' A dataset containing the wavelengths at a 1 nm interval. Tabulated values for
#' quantum luminous efficiency at low light levels according to CIE1951.
#'
#' The variables are as follows:
#'
#' \itemize{
#'   \item w.length (nm)
#'   \item s.q.response
#' }
#'
#' @docType data
#' @keywords datasets
#' @format A response.spct object with 401 rows and 2 variables
#' @references
#' \url{http://www.cvrl.org/} downloaded on 2015-01-24
"CIE1951_scotopic_lef.spct"

#' Photopic sensitivity of the human eye
#'
#' Constant value used in the definition of Lumen
#' 1 W is equal to 683 Lumen at 555 nm
#'
#' A single numeric value
#'
#' @format A single numeric value
#' @name photopic_sensitivity
#' @export
#'
photopic_sensitivity <- 683

#' Scotopic sensitivity of the human eye
#'
#' Constant value for human vision under very weak illumination
#' 1 W is equal to 1699 Lumen at 507 nm
#'
#' A single numeric value
#'
#' @format A single numeric value
#' @name scotopic_sensitivity
#' @export
#'
scotopic_sensitivity <- 1699

#' McCree's mean action spectra for whole-leaf photosynthesis
#'
#' Two action spectra computed as the mean of action spectra for different crop
#' plant species. Grown under two different conditions: field or controlled
#' environment chamber.
#'
#' @format A \code{source_mspct} object containing two spectra. Two
#' numeric variables \code{w.length} and \code{s.q.response} contain the data,
#' and the member name identifies the spectra based on the conditions
#' under plants where grown.
#'
#' @details These two spectra were published by McCree et al. (1972) with
#' numeric data in Tables III and IV given from 350 nm to 740 nm. The
#' wavelength resolution is 25 nm in the original data. The wavelength
#' resolution was increased by natural spline interpolation and do not exactly
#' match the hand-drawn plots in McCree et al. (1972). These spectra are
#' used as biological spectral weighting functions in the computation of
#' "Photosynthetic Yield Photon Flux" (YPD).
#'
#' @seealso \code{\link{PAR}} and
#'  \code{\link[photobiologyPlants]{McCree_photosynthesis.mspct}}.
#'
#' @references
#' McCree, K. J. (1972) The action spectrum, absorptance and quantum yield of
#' photosynthesis in crop plants. \emph{Agricultural Meteorology}, 9:191-216.
#' \doi{10.1016/0002-1571(71)90022-7}.
#'
#' @docType data
#' @keywords datasets
#'
"McCree_mean.mspct"

