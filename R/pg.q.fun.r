#' Gives values for the Plant Growth BSWF as a function of wavelength
#'
#' This function gives a set of numeric multipliers that can be used
#' as a weight to calculate effective doses and irradiances. The
#' returned values are on quantum based effectiveness relative units.
#'
#' @param w.length numeric array of wavelengths (nm)
#'
#' @return a numeric array of the same length as \code{w.length} with values for the BSWF normalized
#' as in the original source (300 nm)
#' 
#' @references \url{http://uv4growth.dyndns.org/}
#' @keywords misc
#' @export
#' @examples
#' PG.q.fun(293:400)

PG.q.fun <-
function(w.length){
    spectral_weigths <- 
      exp(4.688272*exp(-exp(0.1703411*(w.length-307.867)/1.15)) +
      ((390-w.length)/121.7557-4.183832))
    return(spectral_weigths) 
}

