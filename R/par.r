#' Constructors of PAR and PhR wavebands
#'
#' Waveband definitions for \emph{photosynthetic radiation
#' (PhR)}, \emph{photosynthetically active radiation
#' (PAR)} and \emph{extended photosynthetically active radiation
#' (ePAR)} according to different definitions in use for land plants.
#'
#' @details Photosynthetically active radiation (400-700 nm) as proposed by
#'   McCree (1972), and currently used in plant sciences, gives equal weight to
#'   photons within its range, thus weights increase with increasing wavelength
#'   when expressed as energy. PAR is normally expressed as photon irradiance or
#'   (photosynthetic photon flux density, PPFD) using implicitly 1 as weight for
#'   all wavelengths (a BSWF). It is also possible, but very unusual, to express
#'   the quantity PAR as defined in McCree (1972) as an \emph{energy}
#'   irradiance, in which case a BSWF with weights different from 1 needs to be
#'   used. In this case the default normalization wavelength for the PAR BSWF is
#'   set at 550 nm (my own choice).
#'
#'   A proposal (see Zhen et al., 2021), defines extended photosynthetically
#'   active radiation (400-750 nm) as an alternative to PAR. The need to
#'   consider far-red photons as drivers of photosynthesis has become apparent
#'   with the increased use of LEDs for plant cultivation. WARNING: the proposed
#'   definition limits photon irradiance in the range 700-750 nm to a maximum of
#'   30% of the total ePAR: ePAR is zero as long as PAR is zero, and never
#'   larger than 1.4 times PAR even in the presence of far-red photons in
#'   excess, because far-red photons have only a synergistic effect on
#'   photosynthesis in PAR. Ensuring this condition is fulfilled is the
#'   responsibility of the user of \code{PAR()}, \code{ePAR()} and \code{PhR()}
#'   functions. Currently, ePAR can usefully complement PAR, but in my
#'   opinion, it is far too early for it to replace PAR.
#'
#'   Some earlier definitions, described by McCree (1972a) citing Gabrielsen and
#'   Gaastra, used this same wavelength range but assuming wavelength-invariant
#'   response to energy within this same range, thus weights decrease with
#'   increasing wavelength when expressed as photons. McCree (1972a) cites
#'   Nichiporovich for a similar energy based quantity but covering a wider
#'   range of wavelengths (380-710 nm). McCree's definition from 1972 is
#'   currently the one preferred by most researchers and used almost universally
#'   in the plant sciences, while others are only of historical interest.
#'   Photosynthetic radiation (400-700 nm) is defined as a wavelength range and
#'   does not implement the spectral weighting inherent to McCree's (1972)
#'   definition of PAR or the earlier energy-based ones described by McCree
#'   (1972a).
#'
#' @section Warnings:
#' PAR is sometimes described as a range of wavelengths (e.g., Both et al.,
#' 2015), which can be confusing as there is more to McCree's (1972) definition,
#' an spectral response function by which all photons within the range of PAR
#' elicit the same strength of response. As long as PAR is expressed as a
#' photon irradiance or a photon irradiation, this, of course, makes no
#' difference.
#'
#' ePAR and PAR are meant to be use to quantify light sources with a broad
#' spectrum, i.e., sources giving out white light or pale-coloured light. PAR
#' and ePAR are technical measures of light useful for plants in the same way as
#' illuminance is a measure of how bright light feels to an average human. They
#' were never meant to describe the response to be expected from an individual
#' in particular, be it a plant or human. They are generalizations, that allow
#' us to consistently measure light in different situations.
#'
#' @param std a character string "Plant" (or "range"), "McCree" (or "photon",
#'   "PAR"), "Zhen" (or "ePAR"), "Gabrielsen" (or "Gaastra" or "energy") or
#'   "Nichiporovich".
#' @param norm normalization wavelength (nm)
#'
#' @return For PhR, a waveband object defining a wavelength range . For PAR, a
#'   waveband object implementing the response curve of PAR as defined by McCree
#'   (1972) and thus including a weighting function used in computation of
#'   energy-base PAR irradiances. The weights are normalized to 1 at 550 nm. The
#'   waveband label is set to "PAR" or "PhR" accordingly.
#'
#' @note \code{PAR()} and \code{PhR()} call the same function definition with
#'   different default arguments.
#'
#'   The default for the normalization wavelength at 550 nm keeps the average
#'   weights across the waveband equal to unity, except the special case of
#'   ePAR, where the photons in the extension to the range act by synergy.
#'
#'   Standard DIN 5031-10:2018-03 Defines two BSWFs \emph{sy1}
#'   and \emph{sy2} for photosynthesis, none of which are currently implemented
#'   in 'photobiologyWavebands'.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @references
#' McCree, K. J. (1972) The action spectrum, absorptance and quantum
#'   yield of photosynthesis in crop plants. Agricultural Meteorology, 9,
#'   191-216. \doi{10.1016/0002-1571(71)90022-7}
#'
#' McCree, K. J. (1972a) Test of current definitions of photosynthetically
#' active radiation against leaf photosynthesis data. Agricultural Meteorology,
#' 10, 443-453. \doi{10.1016/0002-1571(72)90045-3}
#'
#' Both, A. J.; Benjamin, L.; Franklin, J.; Holroyd, G.; Incoll, L. D.; Lefsrud,
#' M. G. & Pitkin, G. (2015) Guidelines for measuring and reporting
#' environmental parameters for experiments in greenhouses. Plant Methods,
#' 11:43. \doi{10.1186/s13007-015-0083-5}.
#'
#' DIN (2018) Standard DIN 5031-10:2018-03 Optical radiation physics and
#' illuminating engineering. Part 10: Photobiologically effective radiation,
#' quantities, symbols and action spectra. Beuth Verlag, Berlin 2018
#'
#' @family BSWF weighted wavebands
#'
#' @examples
#' PAR()
#' PhR()
#' PAR("Plant")
#'
#' q_irrad(sun.spct, PhR(), scale.factor = 1e6) # umol m-2 s-2
#' q_irrad(sun.spct, PAR(), scale.factor = 1e6) # umol m-2 s-2
#' e_irrad(sun.spct, PAR("Gabrielsen")) # W m-2
#' e_irrad(sun.spct, PhR()) # W m-2
#' e_irrad(sun.spct, PAR()) # BE W m-2, normalized at 700 nm
#'
PAR <- function(std = "PAR",
                norm = 550) {
  if (std %in% c("McCree", "PAR")) {
    if (std != "PAR") {
      wb_name <- paste("PAR", std, sep = ".")
    } else {
      wb_name <- std # "PAR" for backwards compatibility
    }
    new_waveband(400, 700,
                 weight = "BSWF",
                 wb.name = ifelse(norm == 550,
                                  wb_name,
                                  paste(wb_name, as.character(norm), sep = ".")),
                 SWF.q.fun = function(wl) { 1 },
                 SWF.e.fun = function(wl) { 1 / wl * norm },
                 SWF.norm = norm)
  } else if (std %in% c("Zhen", "ePAR")) {
    if (std != "ePAR") {
      wb_name <- paste("ePAR", std, sep = ".")
    } else {
      wb_name <- std
    }
    new_waveband(400, 750,
                 weight = "BSWF",
                 wb.name = ifelse(norm == 550,
                                  wb_name,
                                  paste(wb_name, as.character(norm), sep = ".")),
                 SWF.q.fun = function(wl) { 1 },
                 SWF.e.fun = function(wl) { 1 / wl * norm },
                 SWF.norm = norm)
  } else if (std %in% c("Gabrielsen", "Gaastra")) {
    wb_name <- paste("PAR", std, sep = ".")
    new_waveband(400, 700,
                 weight = "BSWF",
                 wb.name = ifelse(norm == 550,
                                  wb_name,
                                  paste(wb_name, as.character(norm), sep = ".")),
                 SWF.q.fun = function(wl) { 1 * wl / norm },
                 SWF.e.fun = function(wl) { 1 },
                 SWF.norm = norm)
  } else if (std == "Nichiporovich") {
    wb_name <- paste("PAR", std, sep = ".")
    new_waveband(380, 710,
                 weight = "BSWF",
                 wb.name = ifelse(norm == 550,
                                  wb_name,
                                  paste(wb_name, as.character(norm), sep = ".")),
                 SWF.q.fun = function(wl) { 1 * wl / norm },
                 SWF.e.fun = function(wl) { 1 },
                 SWF.norm = norm)
  } else if (std %in% c("Plant", "range")) { # "Plant" for backwards compatibility
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
PhR <- function() {
  PAR(std = "range")
}
