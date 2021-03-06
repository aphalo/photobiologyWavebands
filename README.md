
# photobiologyWavebands <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->

[![CRAN
version](https://www.r-pkg.org/badges/version-last-release/photobiologyWavebands)](https://cran.r-project.org/package=photobiologyWavebands)
[![cran
checks](https://cranchecks.info/badges/worst/photobiologyWavebands)](https://cran.r-project.org/web/checks/check_results_photobiologyWavebands.html)
[![R-CMD-check](https://github.com/aphalo/photobiologyWavebands/workflows/R-CMD-check/badge.svg)](https://github.com/aphalo/photobiologyWavebands/actions)
<!-- badges: end -->

Package ‘**photobiologyWavebands**’ supplies a set of functions and data
to be used together with package ‘**photobiology**’ for calculation of
derived quantities from spectral data. Non-weighed derived quantities
represent summaries of a given range of wavelengths. All constructors
default to ISO standardized definitions when they are available, but
other competing definitions are also available though parameter `std` of
the constructors of waveband objects. These constructors are specialized
versions of the `photobiology::waveband()` constructor.

In photobiology, derived *biologically effective* quantities are used to
quantify the effect of radiation on different organisms or processes
within organisms. These effects can range from damage to perception of
informational light signals.

The definitions cover most non-weighted wavebands in common use, like
those corresponding ultraviolet, visible and infrared, the light colours
seen by humans, photosynthetically active radiation and some other bands
of interest for plants. Several wavebands corresponding to remote
sensing instruments are also provided, including all those for the
LANDSAT missions.

Definitions also include many weighting functions used in the
calculation of effective irradiances and exposures. Weighting functions
included in the package are several biological spectral weighting
functions (BSWFs) used to estimate effective UV doses. Except for the
definition of the erythemal and vitamin-D action spectra for which
definitions standardized by CIE exist, the default formulation is one
commonly used. It is important to keep in mind that mathematical
formulations and extrapolation rules in use are not unique and that it
is important to carefully chose the most appropriate one and report
exactly which one was used. We hope this package will make this easier.

Colour-response and colour-matching functions for human vision and bee
vision are included in package ‘**photobiology**’. Absorbance spectra
for plant photoreceptors and some common plant pigments, as well as
action spectra for photosynthesis are included in package
‘**photobiologyPlants**’.

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

© 2012-2022 Pedro J. Aphalo (<pedro.aphalo@helsinki.fi>). Released under
the GPL, version 2 or greater. This software carries no warranty of any
kind.
