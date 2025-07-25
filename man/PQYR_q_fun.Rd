% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pyr.q.fun.r
\name{PQYR_q_fun}
\alias{PQYR_q_fun}
\alias{PQYR_fld_q_fun}
\alias{PQYR_chb_q_fun}
\title{Gives values for mean photosynthesys action spectrum}
\usage{
PQYR_q_fun(w.length, std = "McCree.field.mean")

PQYR_fld_q_fun(w.length)

PQYR_chb_q_fun(w.length)
}
\arguments{
\item{w.length}{numeric array of w.length (nm).}

\item{std}{character \code{"McCree.field.mean"} or
\code{"McCree.chamber.mean"}.}
}
\value{
a numeric vector of the same length as \code{w.length} with values for
  the BSWF normalized to one at 550 nm.  The returned values are
  based on quantum effectiveness units.
}
\description{
This function gives a set of numeric multipliers that can be used
as a weight to calculate effective doses and irradiances.
}
\details{
These two spectra were published by McCree et al. (1972) with
numeric data in Tables III and IV given from 350 nm to 740 nm. The
wavelength resolution is 25 nm in the original data. The wavelength
resolution was increased by natural spline interpolation and do not exactly
match the hand-drawn plots in McCree et al. (1972). These spectra are
used as biological spectral weighting functions in the computation of
"Photosynthetic Yield Photon Flux" (YPD).
}
\examples{
PQYR_q_fun(seq(400, 700, by = 20))

}
\references{
McCree, K. J. (1972) The action spectrum, absorptance and quantum yield of
photosynthesis in crop plants. \emph{Agricultural Meteorology}, 9:191-216.
\doi{10.1016/0002-1571(71)90022-7}.
}
