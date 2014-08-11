#' Gives values for naked DNA BSWF (SETLOW) as a function of wavelength
#'
#' This function gives a set of numeric multipliers that can be used
#' as a weight to calculate effective doses and irradiances.
#'
#' @param w.length numeric array of w.length (nm)
#'
#' @return a numeric array of the same length as \code{w.length} with values for the BSWF normalized
#' as in the original source.  The returned values are based on quantum effectiveness units.
#' 
#' @references \url{http://uv4growth.dyndns.org/}
#' @keywords misc
#' @export
#' @examples
#' DNA.N.q.fun(293:400)

DNA.N.q.fun <-
function(w.length){
    SETLOW_TUV.quantum <- numeric(length(w.length))
    SETLOW_TUV.quantum[w.length <= 364] <- 
      spline(SETLOW.raw.data$Wavelength,SETLOW.raw.data$SETLOW74,
      xout=w.length[w.length <= 364])$y
    SETLOW_TUV.quantum[w.length > 364] <- 0.0
    return(SETLOW_TUV.quantum)
}

