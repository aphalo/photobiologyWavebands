#' Definition of UV-A waveband
#'
#' UV-A according to CIE and ISO standrads: 315--400 nm.
#' UV-A according to common non-standard practice: 320--400 nm.
#'
#' @usage UVA(std="ISO")
#' @param std a character string "CIE", "ISO" or "none"
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @references
#' ISO and CIE standards
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' UVA()
#' UVA("none")
#' UVA("ISO")
#' UVA("CIE")

UVA <- function(std="ISO") {
  label <- "UVA"
  if (std=="ISO" | std=="CIE"){
    return(new_waveband(w.low=315, w.high=400, wb.name=paste("UVA",std, sep="."), wb.label=label))
  } else if (std=="none"){
    return(new_waveband(w.low=320, w.high=400, wb.name=paste("UVA",std, sep="."), wb.label=label))
  } else {
    warning("Unsupported value for 'std'.")
    return(NA)
  }
}
