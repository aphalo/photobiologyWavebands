#' Constructors of PAR and PhR wavebands
#'
#' Wavelength-range definitions for \emph{photosynthetic radiation
#' (PhR)} and \emph{photosynthetically active radiation
#' (PAR)}.
#'
#' @details Photosynthetically active radiation (400-700 nm) is defined as
#'    giving equal weight to photons within its range, thus weights increase
#'    with increasing wavelength when expressed as energy. Photosynthetic
#'    radiation (400-700 nm) is defined as a wavelength range and does not
#'    implement the spectral weighting inherent to McCree's (1972) definition
#'    of PAR.
#'
#' @param std a character string "Plant" (or "range") or "McCree" (or "weighted").
#'
#' @return For PhR, a waveband object defining a wavelength range . For PAR, a
#'   waveband object implementing the response curve of PAR as defined by McCree
#'   (1972) and thus including a weighting function used in computation of
#'   energy-base PAR irradiances. The weights are normalized to 1 at 550 nm. The
#'   waveband label is set to "PAR" or "PhR" accordingly.
#'
#' @note \code{PAR()} and \code{PhR()} call the same function definiton with
#'   different default arguments.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @references McCree, K. J. (1972) The action spectrum, absorptance and quantum
#'   yield of photosynthesis in crop plants. Agricultural Meteorology, 9,
#'   191-216
#'
#' @examples
#' PAR()
#' PhR()
#' PAR("Plant")
#'
#' q_irrad(sun.spct, PhR(), scale.factor = 1e6) # umol m-2 s-2
#' q_irrad(sun.spct, PAR(), scale.factor = 1e6) # umol m-2 s-2
#' e_irrad(sun.spct, PhR()) # W m-2
#' e_irrad(sun.spct, PAR()) # BE W m-2, normalized at 550 nm
#'
PAR <- function(std = "McCree") {
  if (std %in% c("McCree", "weighted")) {
    new_waveband(400, 700,
                 weight = "BSWF",
                 wb.name = "PAR",
                 SWF.q.fun = function(wl) { 1 },
                 SWF.e.fun = function(wl) { 1 / wl * 550 },
                 SWF.norm = 550)
  } else if (std %in% c("Plant", "range")) {
    new_waveband(400, 700,
                 wb.name = "PhR",
                 SWF.q.fun = NULL,
                 SWF.e.fun = NULL)
  } else {
    warning("'std' = '", std, "' not implemented.")
    waveband()
  }
}

#' @rdname PAR
#'
#' @export
#'
PhR <- function(std = "range") {
  PAR(std = std)
}
