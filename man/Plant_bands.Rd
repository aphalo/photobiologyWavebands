% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plant.bands.r
\name{Plant_bands}
\alias{Plant_bands}
\title{Constructor of lists of wavebands used in plant biology}
\usage{
Plant_bands(std = "sensory20")
}
\arguments{
\item{std}{a character string "sensory", "sensory10", "sensory20", "Sellaro", "ISO",
"CIE", "none" or "", where "ISO", "CIE" and "none" affect only the UV
bands.}
}
\value{
a list of wavebands
}
\description{
Defined according to different authors.
}
\examples{
Plant_bands()
Plant_bands("sensory")
Plant_bands("sensory10")
Plant_bands("sensory20")
Plant_bands("ISO")
Plant_bands("CIE")

}
\seealso{
\code{\link[photobiology]{waveband}}, \code{\link{UVB}},
  \code{\link{UVA}}, \code{\link{Blue}}, \code{link{Green}},
  \code{\link{Red}}, \code{\link{Far_red}} and \code{\link{PAR}}.

Other lists of unweighted wavebands: 
\code{\link{IR_bands}()},
\code{\link{Landsat_bands}()},
\code{\link{UV_bands}()},
\code{\link{VIS_bands}()}
}
\concept{lists of unweighted wavebands}
