% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ir.bands.r
\name{IR_bands}
\alias{IR_bands}
\title{Constructor of lists of infrared wavebands}
\usage{
IR_bands(std = "ISO")
}
\arguments{
\item{std}{a character string "ISO" or "CIE".}
}
\value{
a list of wavebands
}
\description{
Defined according to "ISO" or "CIE".
}
\examples{
IR_bands()
IR_bands("ISO")
IR_bands("CIE")

}
\seealso{
\code{\link[photobiology]{waveband}}

Other lists of unweighted wavebands: 
\code{\link{Landsat_bands}()},
\code{\link{Plant_bands}()},
\code{\link{UV_bands}()},
\code{\link{VIS_bands}()}
}
\concept{lists of unweighted wavebands}
