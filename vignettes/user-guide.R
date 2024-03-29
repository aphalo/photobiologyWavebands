## -----------------------------------------------------------------------------
library(photobiologyWavebands)

## -----------------------------------------------------------------------------
Red("ISO")
Red("Smith10")
PhR()
UV()
IR()

## -----------------------------------------------------------------------------
UV_bands("ISO")
UV_bands("CIE")

## -----------------------------------------------------------------------------
Plant_bands()

## -----------------------------------------------------------------------------
Landsat_bands("L1")

## -----------------------------------------------------------------------------
e_irrad(sun.spct, UV()) # W m-2
q_irrad(sun.spct, UV()) * 1e6 # umol s-1 m-2

## -----------------------------------------------------------------------------
e_irrad(sun.spct, list(Blue(), VIS()))
e_irrad(sun.spct, list(B = Blue(), VIS()))

## -----------------------------------------------------------------------------
e_irrad(sun.spct, VIS_bands())

## -----------------------------------------------------------------------------
q_ratio(sun.spct, Blue(), VIS())
e_ratio(sun.spct, Blue(), VIS())

## -----------------------------------------------------------------------------
e_irrad(sun.spct, CIE())

## -----------------------------------------------------------------------------
# at 1 nm intervals
wavelengths1 <- 285:400
action.spectrum1 <- CIE_e_fun(wavelengths1)

## -----------------------------------------------------------------------------
sun.spct * CIE()

## -----------------------------------------------------------------------------
e_response(sun.spct * CIE1924_lef.spct) * photopic_sensitivity


## -----------------------------------------------------------------------------
e_response(sun.spct * CIE2008_lef2deg.spct) * photopic_sensitivity

## -----------------------------------------------------------------------------
e_response(sun.spct * 1e-6 * CIE1951_scotopic_lef.spct) * scotopic_sensitivity

