#' Definition of PAR waveband
#'
#' Photosythetically active radiation (400-700 nm), no weighting
#' applied.
#'
#' @usage PAR(std="Plant")
#' @param std a character string "Plant" or "McCree"
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @references
#' McCree, K. J. The action spectrum, absorptance and quantum yield of photosynthesis in
#' crop plants. Agricultural Meteorology, 1972, 9, 191-216
#'
#' @examples
#' PAR()
#' PAR("Plant")
PAR <- function(std = "Plant"){
  if (std %in% c("Plant", "McCree")) {
    return(new_waveband(400, 700, wb.name="PAR"))
  } else {
    warning("'std' argument value not implemented.")
    return(NA)
  }
}
