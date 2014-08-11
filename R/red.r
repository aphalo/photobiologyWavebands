#' Definition of red waveband
#' 
#' Red radiation according to "ISO" (610-760 nm) or as commonly defined in plant photobiology,
#' "Smith" (650-670 nm, as used for R:FR photon ratio), and "Sellaro" (620-680 nm,
#' as used by Sellaro et al. (2010) to quantify red light). No weighting applied.
#' 
#' @usage Red(std="ISO")
#' @param std a character string "ISO", "Smith", "Sellaro"
#' @return a list defining the wavelength range
#' @export
#' 
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
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' Red()
#' Red("ISO")
#' Red("Smith")
#' Red("Sellaro")
Red <- function(std="ISO"){
  label="Red"
  if (std=="ISO") {
    return(new_waveband(610, 760, wb.name=paste("Red", std, sep="."), wb.label=label))  
  } else if (std=="Smith"){
    return(new_waveband(650, 670, wb.name=paste("Red", std, sep="."), wb.label="R"))
  } else if (std=="Sellaro"){
    return(new_waveband(620, 680, wb.name=paste("Red", std, sep="."), wb.label=label))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}