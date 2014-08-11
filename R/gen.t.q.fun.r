#' Gives values for GPAS BSWF (Timijan's formulation) as a function of wavelength
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
#' GEN.T.q.fun(293:400)

GEN.T.q.fun <-
function(w.length){
    GEN_T.quantum <- numeric(length(w.length))
    GEN_T.quantum[w.length <= 345] <- 
      exp(-(((265-w.length[w.length <= 345])/21)^2))/0.06217653
    GEN_T.quantum[w.length > 345] <- 0.0
    return(GEN_T.quantum)
}

