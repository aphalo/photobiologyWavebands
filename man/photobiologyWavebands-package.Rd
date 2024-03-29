% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/photobiologyWavebands.R
\docType{package}
\name{photobiologyWavebands-package}
\alias{photobiologyWavebands}
\alias{photobiologyWavebands-package}
\title{photobiologyWavebands: Waveband Definitions for UV, VIS, and IR Radiation}
\description{
\if{html}{\figure{logo.png}{options: style='float: right' alt='logo' width='120'}}

Constructors of waveband objects for commonly used biological spectral weighting functions (BSWFs) and for different wavebands describing named ranges of wavelengths in the ultraviolet (UV), visible (VIS) and infrared (IR) regions of the electromagnetic spectrum. Part of the 'r4photobiology' suite, Aphalo P. J. (2015) \doi{10.19232/uv4pb.2015.1.14}.
}
\details{
Package 'photobiologyWavebands' provides constructors for objects of class
\code{waveband} from package 'photobiology'. These contructors are based on
standard definitions or frequently used non-standardized definitions. When
different definitions are in common use for a given named waveband the
constructors accept an argument to chose among them. Whenever an ISO standard
provides a definition, this is used by default. In the infrared (IR) there
are many different definitions and waveband names in use. We have tried to
include most of the commonly used names and definitions.

Definitions "matching" the different bands of Landsat imagers are included.
These are simple wavelength ranges for wavelengths at half-maximun response
as given in the NASA literature, which in some cases presents small
inconsistencies. These definitions cannot exactly reproduce instrument
responses as they do not describe the real spectral responsiveness of the
satellite imagers.

By necessity we cover only a subset of all definitions in use. These should
be thought as convenience functions, as waveband objects according to any
arbitrary definition can be constructed with the constructor provided by
package \code{\link[photobiology]{photobiology-package}}.
}
\examples{

q_irrad(sun.spct, PAR())  # PAR photon irradiance
q_irrad(sun.spct, Blue("ISO")) # blue photon irradiance, ISO definition
q_irrad(sun.spct, Blue("Sellaro")) # blue photon irradiance, Sellaro et al.'s definition
e_irrad(sun.spct, VIS()) # VIS irradiance, ISO definition
q_irrad(sun.spct, VIS()) # VIS photon, ISO definition
}
\references{
Aphalo, Pedro J. (2015) The r4photobiology suite. UV4Plants Bulletin, 2015:1,
21-29. \doi{10.19232/uv4pb.2015.1.14}.

Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A. R., Robson, T. M.,
Rosenqvist, E. (Eds.). (2012). Beyond the Visible: A handbook of best
practice in plant UV photobiology (1st ed., p. xxx + 174). Helsinki:
University of Helsinki, Department of Biosciences, Division of Plant Biology.
ISBN 978-952-10-8363-1 (PDF), 978-952-10-8362-4 (paperback). Open access PDF
download available at https://hdl.handle.net/10138/37558

Caldwell, M. M. (1971) Solar UV irradiation and the growth and development
of higher plants. In Giese, A. C. (Ed.) Photophysiology, Academic Press,
1971, 6, 131-177

Diffey, B. L. 1991. Solar ultraviolet radiation effects on biological systems.
Review in Physics in Medicine and Biology 36 (3): 299-328.

Green, A. E. S., Miller, J. H. (1975) Measures of biologically active
radiation in the 280-340 nm region. Impacts of climate change on the
environment. CIAP Monograph, 5, Part 1, Chapter 2.2.4

Green, A. E. S.; Sawada, T. & Shettle, E. P. (1974) The middle
ultraviolet reaching the ground Photochemistry and Photobiology, 1974, 19,
251-259

Ibdah, M., Krins, A., Seidlitz, H. K., Heller, W., Strack, D. & Vogt, T.
(2002) Spectral dependence of flavonol and betacyanin accumulation in
Mesembryanthemum crystallinum under enhanced ultraviolet radiation. Plant,
Cell & Environment, 25, 1145-1154

International Commission on Non-Ionizing Radiation Protection (2004) ICNIRP
Guidelines on Limits of Exposure to Ultraviolet Radiation of Wavelengths
Between 180 nm and 400 nm (Incoherent Optical Radiation). Health Physics
87(2):171-186. \url{https://www.icnirp.org/cms/upload/publications/ICNIRPUV2004.pdf}

ISO (2007) Optics and photonics - Spectral bands. ISO Standard 20473:2007.
ISO, Geneva.

ISO (2007) Space environment (natural and artificial) - Process for
determining solar irradiances. ISO Standard 21348. ISO, Geneva.

Quaite, F. E., Sutherland, B. M., Sutherland, J. C. Action spectrum for DNA
damage in alfalfa lowers predicted impact of ozone depletion. Nature, 1992,
358, 576-578

Leutner, B. and Horning, N. (2016). RStoolbox: Tools for Remote Sensing Data
Analysis. R package version 0.1.6.
\url{https://CRAN.R-project.org/package=RStoolbox}

Micheletti, M. I.; Piacentini, R. D. & Madronich, S. (2003) Sensitivity
of Biologically Active UV Radiation to Stratospheric Ozone Changes: Effects
of Action Spectrum Shape
and Wavelength Range Photochemistry and Photobiology, 78, 456-461

Musil, C. F. (1995) Differential effects of elevated ultraviolet-B radiation
on the photochemical and reproductive performances of dicotyledonous and
monocotyledonous arid-environment ephemerals. Plant, Cell and Environment, 18,
844-854

Murakami, K., Aiga I. (1994) Red/Far-red photon flux ratio used as
an index number for morphological control of plant growth under
artificial lighting conditions. Proc. Int. Symp. Artificial Lighting,
Acta Horticulturae, 418, ISHS 1997.

NASA (nd) Landsat 7 Science Data Users Handbook.
\url{https://landsat.gsfc.nasa.gov/wp-content/uploads/2016/08/Landsat7_Handbook.pdf}
Visited on 2016-12-26.

Sellaro, R., Crepy, M., Trupkin, S. A., Karayekov, E., Buchovsky, A. S.,
Rossi, C., & Casal, J. J. (2010). Cryptochrome as a sensor of the blue/green
ratio of natural radiation in Arabidopsis. Plant physiology, 154(1), 401-409.
\doi{10.1104/pp.110.160820}

Setlow, R. B. (1974) The Wavelengths in Sunlight Effective in Producing Skin
Cancer: A Theoretical Analysis. Proceedings of the National Academy of
Sciences, 71, 3363-3366

Smith, H. (1982) Light quality, photoperception and plant strategy. Annual
Review of Plant Physiology, 33:481-518.

USGS (nd) Landsat 8 Science Data Users Handbook.
\url{https://www.usgs.gov/media/files/landsat-8-data-users-handbook}.
Visited on 2023-01-07.

Webb, A. R.; Slaper, H.; Koepke, P. & Schmalwieser, A. W. Know your standard:
clarifying the CIE erythema action spectrum. Photochemistry and photobiology,
2011, 87, 483-486
}
\seealso{
Useful links:
\itemize{
  \item \url{https://docs.r4photobiology.info/photobiologyWavebands/}
  \item \url{https://github.com/aphalo/photobiologywavebands}
  \item Report bugs at \url{https://github.com/aphalo/photobiologywavebands/issues}
}

}
\author{
\strong{Maintainer}: Pedro J. Aphalo \email{pedro.aphalo@helsinki.fi} (\href{https://orcid.org/0000-0003-3385-972X}{ORCID})

Other contributors:
\itemize{
  \item Titta K. Kotilainen \email{titta.kotilainen@helsinki.fi} (\href{https://orcid.org/0000-0002-2822-9734}{ORCID}) [contributor]
}

}
