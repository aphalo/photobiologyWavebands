#' Gives values for with the Absorance spectrum of UVR8 used as SWF
#'
#' This function gives a set of numeric multipliers that can be used
#' as a weight to calculate effective doses and irradiances. The
#' returned values are on quantum based effectiveness relative units.
#'
#' @param w.length numeric array of w.length (nm)
#'
#' @return a numeric array of the same length as \code{w.length} with 
#' values for the BSWF as presented in the original source.
#' @references \url{http://uv4growth.dyndns.org/}
#' @keywords misc
#' @export
#' @examples
#' UVR8.Abs.fun(293:400)
#' 
UVR8.Abs.fun <-
  function(w.length){
    UVR8.Absorbance <- numeric(length(w.length))
    UVR8.Absorbance[w.length <= 323] <- 
      spline(UVR8.raw.data$wavelength,UVR8.raw.data$absorbance,
             xout=w.length[w.length <= 323])$y
    UVR8.Absorbance[w.length > 323] <- 0.0
    return(UVR8.Absorbance)
  }
