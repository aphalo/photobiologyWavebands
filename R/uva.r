#' Constructor of UV-A waveband
#'
#' UV-A according to CIE and ISO standrads: 315--400 nm.
#' UV-A according to common non-standard practice: 320--400 nm.
#' UV-A1 according to CIE: 315--340 nm.
#' UV-A2 according to CIE: 340--400 nm.
#'
#' @param std a character string "CIE", "ISO" or "none"
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @examples
#' UVA()
#' UVA("none")
#' UVA("ISO")
#' UVA("CIE")
#' UVA1()
#' UVA1("CIE")
#' UVA2()
#' UVA2("CIE")
#'
#' @family unweighted wavebands
#'
UVA <- function(std="ISO") {
  label <- "UVA"
  if (std %in% c("ISO", "CIE")) {
    new_waveband(w.low=315, w.high=400, wb.name=paste("UVA", std, sep="."), wb.label=label)
  } else if (std %in% c("none", "medical")) {
    new_waveband(w.low=320, w.high=400, wb.name=paste("UVA", std, sep="."), wb.label=label)
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname UVA
#'
#' @export
#'
UVA1 <- function(std="CIE") {
  if (std=="CIE") {
    new_waveband(w.low=315, w.high=340, wb.name=paste("UVA1",std, sep="."), wb.label="UVA1")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname UVA
#'
#' @export
#'
UVA2 <- function(std="CIE") {
  if (std=="CIE") {
    new_waveband(w.low=340, w.high=400, wb.name=paste("UVA2",std, sep="."), wb.label="UVA2")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}
