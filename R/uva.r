#' Constructor of UV-A waveband
#'
#' UV-A according to CIE and ISO standrads: 315--400 nm.
#' UV-A according to common non-standard practice: 320--400 nm.
#' UV-A2 according to CIE: 315--340 nm.
#' UV-A1 according to CIE: 340--400 nm.
#' UVsw according to non-standard use suitable for plants: 315--350 nm.
#' UVlw according to non-standard use suitable for plants: 350--400 nm.
#'
#' @param std a character string "CIE", "ISO" or "none"
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link[photobiology]{waveband}}
#'
#' @note The non-standard definitions of UV-A and UV-A2 using 320 nm as limit
#'   should not be used in any new publications or work as they deviate from the
#'   internationally accepted standard. Their continued use leads to confusion.
#'   Their inclusion in this package is to allow calculations needed to compare
#'   new results and methods against old publications.
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
