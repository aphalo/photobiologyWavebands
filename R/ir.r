#' Constructors of infra-red wavebands
#'
#' The wavelength limits for \code{std = "RS"} and Landsat imagers have been
#' taken from R package RStools and NASA and USGS documentation. They are
#' defined simply as wavelength ranges without considering the spectral
#' sensitivity of satellite intruments/cameras based on which remote sensing
#' based indexes are usually calculated. The values for \code{std = "ISO"} are
#' according to ISO 20473. The values for \code{std = "CIE"} are suggested
#' values according to Wikipedia, and need verification.
#'
#' The names NIR, SWIR and TIR are abbreviations of near infra-red, short-wave
#' infra-red and thermal infra-red, respectively.
#'
#' @param std character string, "ISO", "CIE", or Landsat imagers named
#'   "LandsatRBV", "LandsatMSS", etc., or "RS", for remote sensing wavebands
#'   as defined in the documentation of package 'RStoolbox'.
#'
#' @seealso \code{\link{Far_red}} for wavebands close to the boundary between red
#'   and infrared regions.
#'
#' @return a waveband object wavelength defining a wavelength range.
#'
#' @export
#'
#' @seealso \code{\link{new_waveband}}  \code{\link{waveband}}
#'
#' @examples
#' SWIR1()
#' SWIR1("RS")
#'
#' @family unweighted wavebands
#'
IR <- function(std="ISO") {
  if (std == "ISO") {
    new_waveband(w.low=780, w.high=1e6, wb.name=paste("IR", std, sep="."), wb.label="IR")
  } else if (std == "CIE") {
    new_waveband(w.low=700, w.high=1e6, wb.name=paste("IR", std, sep="."), wb.label="IR")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname IR
#'
#' @export
NIR <- function(std="ISO") {
  if (std == "ISO") {
    new_waveband(w.low=780, w.high=3000, wb.name=paste("NIR", std, sep="."), wb.label="NIR")
  } else if (std == "CIE") {
    new_waveband(w.low=700, w.high=1400, wb.name=paste("IRA", std, sep="."), wb.label="IRA")
  } else if (std == "RS") {
    new_waveband(w.low=700, w.high=1100, wb.name=paste("NIR", std, sep="."), wb.label="NIR")
  } else if (std == "LandsatOLI") {
    new_waveband(w.low=845, w.high=885, wb.name=paste("NIR", std, sep="."), wb.label="NIR")
  } else if (std=="LandsatETM" || std=="LandsatTM") {
    new_waveband(w.low=760, w.high=900, wb.name=paste("NIR", std, sep="."), wb.label="NIR")
  } else if (std=="LandsatMSS") {
    new_waveband(w.low=800, w.high=1100, wb.name=paste("NIR", std, sep="."), wb.label="NIR")
  } else if (std=="LandsatRBV") {
    new_waveband(w.low=700, w.high=830, wb.name=paste("NIR", std, sep="."), wb.label="NIR")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname IR
#'
#' @export
#'
IRA <- function(std = "CIE") {
  NIR(std)
}

#' @rdname IR
#'
#' @export
#'
SWIR <- function(std="CIE") {
  if (std == "CIE") {
    new_waveband(w.low=1400, w.high=3000, wb.name=paste("IRB", std, sep="."), wb.label="IRB")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname IR
#'
#' @export
#'
IRB <- function(std = "CIE") {
  SWIR(std)
}

#' @rdname IR
#'
#' @export
#'
SWIR1 <- function(std="RS") {
  if (std == "RS") {
    new_waveband(w.low=1100, w.high=1351, wb.name=paste("SWIR1", std, sep="."), wb.label="SWIR1")
  } else if (std == "LandsatOLI") {
    new_waveband(w.low=1560, w.high=1660, wb.name=paste("SWIR1", std, sep="."), wb.label="SWIR1")
  } else if (std=="LandsatETM" || std=="LandsatTM") {
    new_waveband(w.low=1550, w.high=1750, wb.name=paste("SWIR1", std, sep="."), wb.label="SWIR1")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname IR
#'
#' @export
#'
SWIR2 <- function(std="RS") {
  if (std == "RS") {
    new_waveband(w.low=1400, w.high=1800, wb.name=paste("SWIR2", std, sep="."), wb.label="SWIR2")
  } else if (std == "LandsatOLI") {
    new_waveband(w.low=2100, w.high=2300, wb.name=paste("SWIR2", std, sep="."), wb.label="SWIR2")
  } else if (std=="LandsatETM" || std=="LandsatTM") {
    new_waveband(w.low=2080, w.high=2350, wb.name=paste("SWIR2", std, sep="."), wb.label="SWIR2")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname IR
#'
#' @export
#'
MIR <- function(std="ISO") {
  if (std == "ISO") {
    new_waveband(w.low=3000, w.high=50000, wb.name=paste("MIR", std, sep="."), wb.label="MIR")
  } else if (std == "CIE") {
    new_waveband(w.low=3000, w.high=1e6, wb.name=paste("IRC", std, sep="."), wb.label="IRC")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname IR
#'
#' @export
#'
IRC <- function(std = "CIE") {
  MIR(std)
}

#' @rdname IR
#'
#' @export
#'
FIR <- function(std="ISO") {
  if (std == "ISO") {
    new_waveband(w.low=50000, w.high=1e6, wb.name=paste("FIR", std, sep="."), wb.label="FIR")
  } else if (std == "CIE") {
    new_waveband(w.low=3000, w.high=1e6, wb.name=paste("IRC", std, sep="."), wb.label="IRC")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname IR
#'
#' @export
#'
TIR1 <- function(std="RS") {
  if (std == "RS") {
    new_waveband(w.low=8000, w.high=9500, wb.name=paste("TIR1", std, sep="."), wb.label="TIR1")
  } else if (std == "LandsatTIRS") {
    new_waveband(w.low=10600, w.high=11200, wb.name=paste("TIR1", std, sep="."), wb.label="TIR1")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}

#' @rdname IR
#'
#' @export
#'
TIR2 <- function(std="RS") {
  if (std == "RS") {
    new_waveband(w.low=10000, w.high=140000, wb.name=paste("TIR2", std, sep="."), wb.label="TIR2")
  } else if (std == "LandsatTIRS") {
    new_waveband(w.low=11500, w.high=12500, wb.name=paste("TIR2", std, sep="."), wb.label="TIR2")
  } else if (std=="LandsatETM" || std=="LandsatTM") {
    new_waveband(w.low=10400, w.high=12500, wb.name=paste("TIR2", std, sep="."), wb.label="TIR2")
  } else {
    warning("'std' = '", std, "' not implemented.")
    NA
  }
}
