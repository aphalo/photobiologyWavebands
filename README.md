# R package 'photobiologyWavebands'

[![](http://www.r-pkg.org/badges/version/photobiologyWavebands)](https://cran.r-project.org/package=photobiologyWavebands) 

Package '**photobiologyWavebands**' is a set of functions and data to be used together with package '**photobiology**' for calculating derived quantities from spectral data. Non-weighed derived quantities represent summaries of a given range of wavelengths, which can be expressed either in energy or photon based units. All constructors default to ISO standardized definitions when they are available, but other competing definitions are available. These additional definitions include the wavelengths ranges used by Landsat satellite imagers, as these may be needed to approximate remote-sensing-related index calculations on spectral data.

Derived _biologically effective_ quantities are used to quantify the effect of radiation on different organisms or processes within organisms. These effects can range from damage to perception of informational light signals. Except for the definition of the erythemal and vitamin-D spectra for which CIE definitions exist, those which we consider the most frequently used formulations are used as default. Weighting functions included in the package are the luminous efficiency functions for human vision and several biological spectral weighting functions (BSWFs) used to estimate effective UV doses.

The definitions cover most non-weighted wavebands in common use, and in addition many weighting functions used in the calculation of effective irradiances and exposures. The current version of the package puts emphasis, in the case of weighting functions, on a subset of those in use, but in the future the package will be expanded to included responses relevant to additional groups of organisms. Colour-response and colour-matching functions for human vision and bee vision are included in package '**photobiology**'.

Please, see the web site [r4photobiology](http://www.r4photobiology.info) for details on other packages available as part of the suite, and on how to install them.
