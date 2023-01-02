---
editor_options:
  markdown:
    wrap: 72
---

# photobiologyWavebands 0.5.1

-   `PAR()` was previously defined as a wavelength range, which is correct only for computations of photon irradiance. For computation of energy irradiance the correct approach is to use a weighting function based on the energy per photon. This now
fixed. The previous behaviour of `PAR()` can now be obtained with the new function `PhR()`or by passing an argument to parameter `std`. This change affects only computations of energy irradiance, and although not code breaking, returned values will vary slightly.
-   `PAR()` gains definitions of historical interest as well as the recently
proposed extended photosynthetically active radiation, ePAR.
-   `Plant_bands()` now accepts `"Sellaro"` and `"sensoryBroad"` as argument for `std`.
-   `Blue()` and `Green` now accept `"broad"` as argument for `std`, corresponding to very broad ranges of wavelengths as frequently used in plant sciences.
-    Update `UVI()` so that it optionally returns integer values as recommended by WWO for communication of UVI to the geenral public. Default behaviour remains unchanged.
-    Updates to documentation.

# photobiologyWavebands 0.5.0

-   Minor edit to documentation and update of the manual to comply with HTML 5.
-   On bad arguments to parameter `std` the returned value is no-longer `NA` (a `logical` value) but instead a `waveband` object with its wavelength fields set to `NA_real_`, as returned by a call to `waveband()`. This potentially code-breaking change ensures that the class of the returned objects is always the same, and that `NA` more easily propagates to further computations.

# photobiologyWavebands 0.4.5

-   Major bug! The definitions UVA1() and UVA2() were swapped.
-   **Git repository moved to GitHub.**

# photobiologyWavebands 0.4.4

-   Add NDVI(), normalized difference vegetation index.
-   Update docs for 'roxygen2' 7.1.0.

# photobiologyWavebands 0.4.3

-   Add waveband definitions for non-standard split of the UVA band with
    constructors UVAsw() and UVAlw().
-   Add two new definitions of far-red as used in remote sensing:
    "RedEdge20" and "RedEdge40".
-   Minor updates to documentation.

# photobiologyWavebands 0.4.2

Add constructors for frequently used infrared bands, and for lists of
infrared bands. Add as additional values recognized as argument for
parameter std "RS" for wavelength ranges commonly used in remote sensing
to the different existing and new waveband constructors. Add
constructors for wavelength-range based waveband definitions for the
imagers used in Landsat missions 1 to 8 : "LandsatRBV", "LandsatMSS",
"LandsatTM", "LandsatETM", "LandsatOLI", and "LandsatTIRS". Add
constructor Landsat_bands() returning lists of waveband objects for the
different Landsat missions. Update warning messages and error handling
in existing constructors. Update Plant_bands() constructor to support
CIE's UVA1 and UVA2 definitions. Update vignette.

# photobiologyWavebands 0.4.1

Update documentation.

# photobiologyWavebands 0.4.0

Remove all definitions of ratios. Remove vignette with plots of the
wavebands. Remove dependency of vignettes on package ggspectra.

# photobiologyWavebands 0.3.4

Use package ggspectra instead of photobiologygg in vignette for
compatibility with ggplot2 version 2.

# photobiologyWavebands 0.3.3

Minor correction of hinges in definitions to avoid errors at boundaries.

# photobiologyWavebands 0.3.2

Added function and waveband constructor for ICNIRP BSWF. Rebuilt data
and package with photobiology 0.8.0.

# photobiologyWavebands 0.3.1

R_FR_ratio() now uses "Smith10" giving 10 nm bands.

# photobiologyWavebands 0.3.0

Rebuilt data and package with photobiology 0.6.0. This required some
minor edits to the vignettes.

# photobiologyWavebands 0.2.8

Edited the definitions of Red() and Far_red() to include additional
wavelength limits as used by other authors.

Updated User Guide.

# photobiologyWavebands 0.2.7

Some edits to vignettes.

# photobiologyWavebands 0.2.6

Added luminous efficiency functions for human vision, and the constants
used in the definition of Lumen. Setlow's BSWF is now stored as a
response.spct object using the same variable names as in the rest of the
suite. The Setlow data from TUV has already been converted to energy
units, but this was not noticed when this data was added to the package.
This bug is now corrected. Updated User Guide with some examples of the
calculation of luminous flux in lux from spectral irradiance data. Added
plots of the luminous efficiency curves to the Data Plots vignette.

# photobiologyWavebands 0.2.5

Updated vignettes.

# photobiologyWavebands 0.2.4

Update to documentation and vignettes. UVR8-related data and functions
moved to package photobiologyPlants.

# photobiologyWavebands 0.2.3

Now all constructors of waveband objects for BSWFs, have formal
arguments w.low and w.high, with values earlier in use, now set as
defaults.

Added some references to the documentation.

User Guide edited to match current versions of packages photobiology and
photobiologygg, as well as to update to to the current version.

# photobiologyWavebands 0.2.2

Changed the definition of SWFs functions not to have any intrinsic
wavelength limits, and made this limit a new formal argument on the
waveband constructor functions, keeping the same defaults. Returned
values should remain unchanged. This bit of flexibility is needed as
different authors have used different limits for the same BSWFs.

A new formulation for GPAS has been added. The formulation by Micheletti
and Piacentini (2002) is used for example in the TUV model (version
5.0). The new waveband constructor is GEN.M().

# photobiologyWavebands 0.2.1

Changed the definition of SWFs to not include wavelengths shorter than
280 nm, except for the case of UVR8 absorbance.

# photobiologyWavebands 0.2.0

Edits to User Guide for compatibility and rebuilt with photobiology
0.5.1, now required.

# photobiologyWavebands 0.1.0

Merge of photobiologyUV and photobiologyVIS packages. Merged and updated
the vignettes. Added functions for calculating UV:PAR photon ratios.
Added functions for creating some coherent lists of wavebands (e.g. all
ISO defined colours).

------------------------------------------------------------------------

-   photobiologyUV \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

# photobiologyUV 0.2.8

Added setting of wb.label in functions defining wavebands.

# photobiologyUV 0.2.7

Fixed a bug introduced in version 0.2.6: wrong name used for wavebands
created by UVC(). photobiologyUV 0.2.6 ====================

Added "medical" definitions of UVB and UVB.

# photobiologyUV 0.2.5

Added "methane from pectin" BSWF of McLeod et al. (2008)

# photobiologyUV 0.2.4

Minor changes, with no effect on functionality

# photobiologyUV 0.2.3

Revised User Guide and added Catalogue of plot of BSWFs. No changes to
the R code.

# photobiologyUV 0.2.2

Added calculation of UV Index.

# photobiologyUV 0.2.1

Internally modified to work with photobiology (\>= 0.2.1) User interface
unchanged.

# photobiologyUV 0.2.0

Internally modified to work with photobiology (\>= 0.2.0) User interface
unchanged.

# photobiologyUV 0.1.2

Added vignettes. Still needs some cleaning of code and improved
documentation.

# photobiologyUV 0.1.0

First version. Implements equivalent WBs and SWFs to those in UVcalc.
The algorithms are exactly the same as most of the functions were just
copied from UVcalc 1.3.1

------------------------------------------------------------------------

-   photobiologyVIS \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

# photobiologyVIS 0.1.5

Added setting of wb.label in functions defining wavebands.

# photobiologyVIS 0.1.4

Added missing import directive. Rebuilt vignette under photobiology
0.2.16 as the output of the examples is cosmetically different.

# photobiologyVIS 0.1.3

Changed waveband definitions to allow caching. A change in package
photobiology adds hinges.

# photobiologyVIS 0.1.2

Corrected error in green light wavelength range, and added new optional
definitions of wave length ranges.

Added a vignette: a manual.
