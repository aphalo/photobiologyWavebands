#' Definition of FR waveband
#'
#' Far-red radiation according to "ISO" (not defined) or as commonly defined in plant photobiology,
#' "Smith" (720-740 nm, as used for R:FR photon ratio), and "Sellaro" (700-750 nm,
#' as used by Sellaro et al. (2010) to quantify far-red light), and "BTV" (700-760 nm, as defined
#' in Aphalo et al. (2012)). No weighting applied.
#'
#' @usage Far_red(std="ISO")
#' @param std a character string "ISO" (NA), "Smith" (720-740 nm), "Sellaro" (700-750 nm),
#' "BTV" (700-760 nm).
#' @export
#' @references
#' Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A. R., Robson, T. M.,
#' Rosenqvist, E. (Eds.). (2012). Beyond the Visible: A handbook of best
#' practice in plant UV photobiology (1st ed., p. xxx + 174).
#' Helsinki: University of Helsinki, Department of Biosciences,
#' Division of Plant Biology. ISBN 978-952-10-8363-1 (PDF),
#' 978-952-10-8362-4 (paperback). Open access PDF download available at
#' http://hdl.handle.net/10138/37558
#'
#' ISO (2007) Space environment (natural and artificial) - Process for determining
#' solar irradiances. ISO Standard 21348. ISO, Geneva.
#'
#' Sellaro, R., Crepy, M., Trupkin, S. A., Karayekov, E., Buchovsky, A. S.,
#' Rossi, C., & Casal, J. J. (2010). Cryptochrome as a sensor of the
#' blue/green ratio of natural radiation in Arabidopsis. Plant physiology,
#' 154(1), 401-409. doi:10.1104/pp.110.160820
#'
#' Smith, H. (19xx)
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' Far_red()
#' Far_red("ISO")
#' Far_red("Smith")
#' Far_red("BTV")
Far_red <- function(std="ISO"){
  label="FR"
  if (std=="ISO") {
    warning("'ISO gives no standard definition of far-red.")
    return(NA)
  } else if (std=="Smith"){
    return(new_waveband(720, 740, wb.name=paste("FarRed", std, sep="."), wb.label=label))
  } else if (std=="Sellaro"){
    return(new_waveband(700, 750, wb.name=paste("FarRed", std, sep="."), wb.label=label))
  } else if (std=="BTV"){
    return(new_waveband(700, 760, wb.name=paste("FarRed", std, sep="."), wb.label=label))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}
