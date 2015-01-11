#' Definition of UVR8 weighted waveband
#'
#' UVR8 absorbance spectrum of ...
#'
#' @param norm normalization wavelength (nm)
#' @return a list defining the wavelength range, weighting and normalization
#' @usage UVR8.Abs(norm=300)
#' @references
#' To be added
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' UVR8.Abs()
#' UVR8.Abs(300)

UVR8.Abs <- function(norm=300) {
  new_waveband(w.low=246, w.high=323,
               weight="SWF", SWF.q.fun=UVR8.Abs.fun, SWF.e.fun=UVR8.Abs.fun, SWF.norm=NULL,
               norm=norm, wb.name=paste("UVR8.Abs", as.character(norm), sep="."))
}
