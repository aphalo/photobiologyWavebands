#' Constructor of UV-A waveband
#'
#' UV-A according to CIE and ISO standards: 315-400 nm. UV-A according to
#' common non-standard practice: 320-400 nm. UV-A2 according to CIE report
#' 134/1: 315-340 nm. UV-A1 according to CIE report 134/1: 340-400 nm. UV-Asw
#' according to non-standard use possibly suitable for plants: 315-350 nm.
#' UV-Alw according to non-standard use possibly suitable for plants: 350-400
#' nm.
#'
#' @param std a character string \code{"CIE"}, \code{"ISO"} or \code{"none"}.
#'
#' @return A \code{waveband} object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @note The non-standard definitions of UV-A and UV-A2 using 320 nm as limit
#'   should not be used in any new publications or work as they deviate from the
#'   internationally recommended practice. Their continued use leads to confusion.
#'   Their inclusion in this package is to allow calculations needed to compare
#'   new results and methods against old publications. UV-A1 and UV-A2
#'   definitions are in use in medicine, but not yet standardised. Recent
#'   research on the plant photoreceptor UVR8 suggests that UV-A1 and UV-A2
#'   bands are also relevant to plants (Rai et al., 2021). UV-Alw and UV-Asw
#'   have been used for plants, but UV-A1 and UV-A2 seem now preferable.
#'
#' @references CIE (1999) 134/1 TC 6-26 report: Standardization of the Terms
#' UV-A1, UV-A2 and UV-B.
#' \url{https://cie.co.at/publications/cie-collection-photobiology-photochemistry-1999}
#'
#' Rai N, Morales LO, Aphalo PJ (2021) Perception of solar UV radiation by
#' plants: photoreceptors and mechanisms. Plant Physiology 186: 1382–1396.
#' \doi{10.1093/plphys/kiab162}
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
UVA <- function(std = "ISO") {
  label <- "UVA"
  if (std %in% c("ISO", "CIE")) {
    new_waveband(
      w.low = 315,
      w.high = 400,
      wb.name = paste(label, std, sep = "."),
      wb.label = label
    )
  } else if (std %in% c("none", "medical")) {
    new_waveband(
      w.low = 320,
      w.high = 400,
      wb.name = paste(label, std, sep = "."),
      wb.label = paste(label, "m", sep = ".")
    )
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname UVA
#'
#' @export
#'
UVA1 <- function(std = "CIE") {
  if (std == "CIE") {
    new_waveband(
      w.low = 340,
      w.high = 400,
      wb.name = paste("UVA1", std, sep = "."),
      wb.label = "UVA1"
    )
  } else if (std == "plants") {
    new_waveband(
      w.low = 350,
      w.high = 400,
      wb.name = paste("UVAlw", std, sep = "."),
      wb.label = "UVAlw"
    )
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname UVA
#'
#' @export
#'
UVA2 <- function(std = "CIE") {
  if (std == "CIE") {
    new_waveband(
      w.low = 315,
      w.high = 340,
      wb.name = paste("UVA2", std, sep = "."),
      wb.label = "UVA2"
    )
  } else if (std == "plants") {
    new_waveband(
      w.low = 315,
      w.high = 350,
      wb.name = paste("UVAsw", std, sep = "."),
      wb.label = "UVAsw"
    )
  }  else if (std %in% c("none", "medical")) {
    new_waveband(
      w.low = 320,
      w.high = 340,
      wb.name = paste("UVA2", std, sep = "."),
      wb.label = "UVA2.m"
    )
  }else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname UVA
#'
#' @export
#'
UVAsw <- function(std = "plants") {
  UVA2(std)
}

#' @rdname UVA
#'
#' @export
#'
UVAlw <- function(std = "plants") {
  UVA1(std)
}

#' @rdname UVA
#'
#' @export
#'
UVAsw <- function(std = "plants") {
  UVA2(std)
}
