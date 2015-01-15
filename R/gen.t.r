#' Definition of GPAS (Timijan) weighted waveband
#'
#' Generalized Plant Action BSWF of Caldwell as formulated by Timijan et al.
#'
#' @param norm normalization wavelength (nm)
#' @param w.low short-end boundary wavelength (nm)
#' @param w.high long-end boundary wavelength (nm)
#'
#' @return a waveband object wavelength defining wavelength range, weighting function
#' and normalization wavelength.
#'
#' @usage GEN.T(norm=300, w.low=275, w.high=345)
#' @references
#' Caldwell, M. M. (1971)
#' Timijan et al. (198X)
#'
#' @export
#' @seealso \code{\link{GEN.G}} \code{\link{GEN.M}} \code{\link{PG}} \code{\link{new_waveband}}
#'  \code{\link{waveband}}
#' @examples
#' GEN.T()
#' GEN.T(300)

GEN.T <- function(norm=300, w.low=275, w.high=345) {
  new_waveband(w.low=w.low, w.high=w.high, weight="SWF", SWF.q.fun=GEN.T.q.fun, SWF.norm=300,
               norm=norm, wb.name=paste("GEN.T", as.character(norm), sep="."), wb.label="GEN(T)")
}
