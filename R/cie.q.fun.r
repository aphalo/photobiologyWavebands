#' Gives values for the erythemal BSWF as a function of wavelength
#'
#' This function gives a set of numeric multipliers that can be used
#' as a weight to calculate effective doses and irradiances. The
#' returned values are on quantum based effectiveness relative units.
#'
#' @param w.length numeric array of wavelengths (nm)
#'
#' @return a numeric array of the same length as \code{w.length} with values for the BSWF normalized
#' as in the original source (298 nm) and based on quantum effectiveness.
#' 
#' @references \url{http://uv4growth.dyndns.org/}
#' @keywords misc
#' @export
#' @examples
#' CIE.q.fun(293:400)
#' 
CIE.q.fun <-
function(w.length){
    CIE.e.fun(w.length) * 298.0 / w.length
}

