#' Gives values for GPAS BSWF (Green's formulation) as a function of wavelength
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
#' GEN.G.q.fun(293:400)

GEN.G.q.fun <-
function(w.length){
    GEN_G.quantum <- numeric(length(w.length))
    GEN_G.quantum[w.length <= 313.3] <- 
      2.618 * (1.0 - (w.length[w.length <= 313.3] /
      313.3)^2) * exp((300 - w.length[w.length <= 313.3]) / 31.08)
    GEN_G.quantum[w.length > 313.3] <- 0.0
    return(GEN_G.quantum)
}

