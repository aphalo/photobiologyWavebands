#' Definition of FR waveband
#'
#' Far-red radiation according to "ISO" (not defined) or as commonly defined in plant photobiology,
#' "Smith10" (725-735 nm), "Smith20" (720-740 nm), "Inada" (700-800 nm), "Warrington"
#' (700-850 nm), and "Sellaro" (700-750 nm), and "BTV" (700-770 nm), as defined
#' in a recent handbook. No weighting applied.
#'
#' @usage Far_red(std="ISO")
#' @param std a character string, defaults to "ISO", as for other colour definitions, which in
#' this case returns \code{NA}.
#'
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
#' Murakami, K., Aiga I. (1994) Red/Far-red photon flux ratio used as
#' an index number for morphological control of plant growth under
#' artificial lighting conditions. Proc. Int. Symp. Artificial Lighting,
#' Acta Horticulturae, 418, ISHS 1997.
#'
#' Sellaro, R., Crepy, M., Trupkin, S. A., Karayekov, E., Buchovsky, A. S.,
#' Rossi, C., & Casal, J. J. (2010). Cryptochrome as a sensor of the
#' blue/green ratio of natural radiation in Arabidopsis. Plant physiology,
#' 154(1), 401-409. doi:10.1104/pp.110.160820
#'
#' Smith, H. (19xx)
#'
#' Smith, H. (1982) Light quality, photoperception and plant strategy.
#' Annual Review of Plant Physiology, 33:481-518.
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' Far_red()
#' Far_red("ISO")
#' Far_red("Smith")
#' Far_red("BTV")
#'
#' @family unweighted wavebands
#'
Far_red <- function(std="ISO"){
  label="FR"
  if (std=="Smith") {
    warning("The definition of 'Smith' defaults to 'Smith10', to restore old behaviour use 'Smith20'.")
    std <- "Smith10"
  }
  if (std=="ISO") {
    warning("'ISO gives no standard definition of far-red.")
    return(NA)
  } else if (std=="Smith20"){
    return(new_waveband(720, 740, wb.name=paste("FarRed", std, sep="."), wb.label=label))
  } else if (std=="Smith10"){
    return(new_waveband(725, 735, wb.name=paste("FarRed", std, sep="."), wb.label=label))
  } else if (std=="Inada"){
    return(new_waveband(700, 800, wb.name=paste("FarRed", std, sep="."), wb.label=label))
  } else if (std=="Warrington"){
    return(new_waveband(700, 850, wb.name=paste("FarRed", std, sep="."), wb.label=label))
  } else if (std=="Sellaro"){
    return(new_waveband(700, 750, wb.name=paste("FarRed", std, sep="."), wb.label=label))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}
