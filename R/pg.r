#' Constructor of PG weighted waveband
#'
#' Plant growth BSWF of Flint and Caldwell
#'
#' @details The mathematical formulation included by Flint and Caldwell (2003)
#' as an appendix is used. While this formulation is consistently used, the
#' range of wavelengths over which it has been applied has varied. We use the
#' approach of the NSF UV network and extrapolate up to 390 nm. The widely
#' used simulation program TUV uses, instead, 366 nm as the boundary, which
#' makes a significant difference to the computed irradiance values in sunlight.
#'
#' @param norm normalization wavelength (nm)
#' @param w.low short-end boundary wavelength (nm)
#' @param w.high long-end boundary wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting
#'   function and normalization wavelength.
#'
#' @references [1] Flint, S. and Caldwell M. M. (2003) A biological spectral
#' weighting function for ozone depletion research with higher plants
#' Physiologia Plantarum, 2003, 117, 137-144
#'
#' [2] Micheletti, M. I.; Piacentini, R. D. & Madronich, S. (2003) Sensitivity
#' of Biologically Active UV Radiation to Stratospheric Ozone Changes: Effects
#' of Action Spectrum Shape and Wavelength Range Photochemistry and
#' Photobiology, 78, 456-461
#'
#' [3] \url{https://www2.acom.ucar.edu/modeling/tropospheric-ultraviolet-and-visible-tuv-radiation-model}
#'
#' @note In the original publication [1], the long-end wavelength boundary is
#'   not specified. The longest wavelength at which the plant response was
#'   measured is 366 nm. From the data there is no evidence that action would
#'   immediately drop to zero at longer wavelengths. We have used in earlier
#'   versions the same value as used by the 'NSF Polar Programs UV Monitoring
#'   Network' as described in
#'   \url{https://web.archive.org/web/20220130091146/http://uv.biospherical.com/Version2/description-Version2-Database3.html}.
#'
#'   We use 390 nm as default value for \code{w.high}, but make if possible for
#'   the user to set a different wavelength. To reproduce the output of the TUV
#'   simulation model [3] version 5.0 set \code{w.high = 366}. The effect on the
#'   RAF and doses of changing this wavelength boundary is substantial, as
#'   discussed by Micheletti et al. [2]. Consequently, the value used must be
#'   always reported to ensure reproducibility. For comparisons with previous
#'   reports one may need to recompute effective irradiances using matching
#'   wavelength boundaries on a case by case basis.
#'
#' @export
#'
#' @seealso \code{\link{GEN_G}} \code{\link{GEN_T}} \code{\link{GEN_M}} and
#'  \code{\link[photobiology]{waveband}}
#'
#' @examples
#' PG()
#' PG(300)
#'
#' @family BSWF weighted wavebands
#'
PG <- function(norm = 300,
               w.low = 275,
               w.high = 390) {
  new_waveband(
    w.low = w.low,
    w.high = w.high,
    weight = "SWF",
    SWF.q.fun = PG_q_fun,
    SWF.norm = 299.925658,
    norm = norm,
    wb.name = paste("PG", as.character(norm), sep = "."),
    wb.label = "PG"
  )
}
