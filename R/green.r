#' Definition of green waveband
#'
#' Green radiation according to ISO or as commonly defined in plant photobiology,
#' no weighting applied.
#'
#' @usage Green(std="ISO")
#' @param std a character string "ISO", "Sellaro" or "Plant"
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#' @references
#'
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
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @note When released, this package will replace the package UVcalc.
#' @examples
#' Green()
#' Green("ISO") # 500 to 570
#' Green("Sellaro") # 500 to 570 nm
#'
#' @family unweighted wavebands
#'
Green <- function(std="ISO"){
  label="Green"
  if (std=="ISO") {
    return(new_waveband(500, 570, wb.name=paste("Green", std, sep="."), wb.label=label))
  } else if (std=="Sellaro"){
    return(new_waveband(500, 570, wb.name=paste("Green", std, sep="."), wb.label=label))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}
