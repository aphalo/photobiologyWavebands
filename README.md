
# photobiologyWavebands <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->

[![CRAN
version](https://www.r-pkg.org/badges/version-last-release/photobiologyWavebands)](https://cran.r-project.org/package=photobiologyWavebands)
[![cran
checks](https://badges.cranchecks.info/worst/photobiologyWavebands.svg)](https://cran.r-project.org/web/checks/check_results_photobiologyWavebands.html)
[![R-CMD-check](https://github.com/aphalo/photobiologyWavebands/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/aphalo/photobiologyWavebands/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Package ‘photobiologyWavebands’ supplies a set of functions and data to
be used together with package ‘photobiology’ for calculation of derived
quantities from spectral data. Package ‘photobiology’ defines class
`waveband` for storing wavelength ranges or spectral weighting functions
plus wavelength ranges and a corresponding constructor function
`waveband()`. Package ‘photobiologyWavebands’ provides specialized
contructors so that frequently used wavebands can be created by name
instead of directly entering numeric boundaries for wavelength and
user-defined functions for weighting as needed when using `waveband()`.
R functions for frequently used to obtain spectral weighting factors
from arbitrary wavelengths in nanometres are also exported.

Non-weighted derived quantities represent summaries of a given range of
wavelengths, i.e., weight is 1 irrespective of wavelength or use of
photon or energy units. In this case constructors of `waveband` objects
default to ISO standardized definitions when they are available, with
other competing definitions available by passing character strings as
argument to parameter `std`.

The non-weighted definitions cover most non-weighted wavebands in common
use, like those corresponding ultraviolet, visible and infrared, the
light colours seen by humans, and some other bands of interest for
plants.

Several wavebands corresponding to remote sensing instruments are also
provided, including all those for the LANDSAT missions, as non-weighted
definitions. The Landsat imagers do have a specific responsiveness at
each wavelength, and would in principle have to be defined using
response-dependent weighting functions. The calibrations and definitions
provided by NASA are based on average response per band. For example, in
the OLI instrument several of the bands are relatively narrow, while the
wider ones seem to have a response that is flatter on a per photon basis
than on an energy basis. If Landsat response bands are to be simulated
using spectral data from other instruments these approximations need
special consideration.

The definition of photosyntheticaly active radiation (PAR) is
non-weighted on a photon basis but spectrally weighted on an energy
based. In some cases the same range of wavelengths as in the definition
of PAR is used to compute a non-weighted energy irradiance, which should
probably not be called PAR because of the different weighting!

Both PAR and illuminance are based on biological spectral weighting
functions, approximating the spectral response of photosynthesis and the
human-perceived light brightness, respectively. Several other derived
*biologically effective* quantities are used to quantify the effect of
radiation on different organisms or processes within organisms. These
effects can range from damage to perception of informational light
signals including vision. Weighting function definitions represent
measurable or expected biological or photocheminal responses, and
consequently they differ if used to compute effective spectral energy-
and photon irradiances. Thus, two versions of weighting functions are
stored in `waveband` objects.

Exports from ‘photobiologyWavebands’ also include several weighting
functions used in the calculation of effective irradiances and
exposures. These are the same functions used by the constructors of
`waveband` objects. These Weighting functions are mostly biological
spectral weighting functions (BSWFs) used to estimate effective UV
doses. Except for the definition the erythema (human skin reddening) and
vitamin-D3 BSWFs for which definitions standardized by CIE exist, the
default formulation is one commonly used and preferred by the author of
the package. It should be kept in mind that mathematical formulations
and extrapolation rules in use are not unique and that it is important
to carefully chose the most appropriate ones and report which one was
used. We hope this package will make this easier. The estimated summary
values depend strongly on the choice of BSWF, its formulation and the
extrapolation rules used. These choices remain in the hands of users,
expected to have the necessary knowledge.

Colour-response and colour-matching functions for human vision and bee
vision are included in package ‘photobiology’. Absorbance spectra for
plant photoreceptors and some common plant pigments, as well as action
spectra for photosynthesis are included in package ‘photobiologyPlants’.
Package ‘colorSpec’ provides tools for working with colours, including
colour spaces for devices like cameras. Package ‘photobiologyInOut’
facilitates translation of spectral data stored in classes defined in
package ‘photobiology’ and other packages such as ‘colorSpec’.

## Installation

Installation of the most recent stable version from CRAN:

``` r
install.packages("photobiologyWavebands")
```

Installation of the current unstable version from Bitbucket:

``` r
# install.packages("remotes")
remotes::install_github("aphalo/photobiologyWavebands")
```

## Documentation

HTML documentation is available at
(<https://docs.r4photobiology.info/photobiologyWavebands/>), including
an *User Guide*.

News on updates to the different packages of the ‘r4photobiology’ suite
are regularly posted at (<https://www.r4photobiology.info/>).

Two articles introduce the basic ideas behind the design of the suite
and describe its use: Aphalo P. J. (2015)
(<https://doi.org/10.19232/uv4pb.2015.1.14>) and Aphalo P. J. (2016)
(<https://doi.org/10.19232/uv4pb.2016.1.15>).

A book is under preparation, and the draft is currently available at
(<https://leanpub.com/r4photobiology/>).

A handbook written before the suite was developed contains useful
information on the quantification and manipulation of ultraviolet and
visible radiation: Aphalo, P. J., Albert, A., Björn, L. O., McLeod, A.
R., Robson, T. M., & Rosenqvist, E. (Eds.) (2012) Beyond the Visible: A
handbook of best practice in plant UV photobiology (1st ed., p. xxx +
174). Helsinki: University of Helsinki, Department of Biosciences,
Division of Plant Biology. ISBN 978-952-10-8363-1 (PDF),
978-952-10-8362-4 (paperback). PDF file available from
(<https://doi.org/10.31885/9789521083631>).

## Contributing

Pull requests, bug reports, and feature requests are welcome at
(<https://github.com/aphalo/photobiologyWavebands>).

## Citation

If you use this package to produce scientific or commercial
publications, please cite according to:

``` r
citation("photobiologyWavebands")
#> 
#> To cite package 'photobiologyWavebands' in publications, please use:
#> 
#>   Aphalo, Pedro J. (2015) The r4photobiology suite. UV4Plants Bulletin,
#>   2015:1, 21-29. DOI:10.19232/uv4pb.2015.1.14
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Article{,
#>     author = {Pedro J. Aphalo},
#>     title = {The r4photobiology suite},
#>     journal = {UV4Plants Bulletin},
#>     volume = {2015},
#>     number = {1},
#>     pages = {21-29},
#>     year = {2015},
#>     doi = {10.19232/uv4pb.2015.1.14},
#>   }
```

## License

© 2012-2023 Pedro J. Aphalo (<pedro.aphalo@helsinki.fi>). Released under
the GPL, version 2 or greater. This software carries no warranty of any
kind.
