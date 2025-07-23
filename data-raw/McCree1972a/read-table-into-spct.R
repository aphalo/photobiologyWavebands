library(tidyr)
library(dplyr)
library(photobiology)
library(ggspectra)

McCree_mean_QY.tb <-
  read.table("data-raw/McCree1972a/tables_IV_III_photon_action_spectra.txt",
             header = TRUE)

McCree_mean_QY.tb |>
  pivot_longer(cols = !w.length,
               names_to = "std",
               values_to = "s.q.response") |>
  mutate(grown = factor(std)) |>
  as.response_spct(multiple.wl = 2, idfactor = "std") -> McCree_mean.spct

autoplot(McCree_mean.spct, unit.out = "photon") +
  geom_point()

# McCree_mean.mspct <-
#   interpolate_wl(McCree_mean.spct, length.out = 50)
McCree_mean.mspct <- subset2mspct(McCree_mean.spct)
what_measured(McCree_mean.mspct[["McCree.field.mean"]]) <-
  "Mean \"quantum yield spectra\" (photon-based action spectra) from McCree (1972) doi:10.1016/0002-1571(71)90022-7."
what_measured(McCree_mean.mspct[["McCree.chamber.mean"]]) <-
  "Mean \"quantum yield spectra\" (photon-based action spectra) from McCree (1972) doi:10.1016/0002-1571(71)90022-7."
how_measured(McCree_mean.mspct[["McCree.field.mean"]]) <-
  "Numeric data from table IV, columns 'nm' and 'mean'. Interpolated with natural spline."
how_measured(McCree_mean.mspct[["McCree.chamber.mean"]]) <-
  "Numeric data from tables III, columns 'nm' and 'mean'. Interpolated with natural spline."

autoplot(McCree_mean.mspct, unit.out = "photon", idfactor = "std") +
  geom_point(aes(shape = std))

save(McCree_mean.mspct, file = "data/BSWF-photosynthesis.rda")
