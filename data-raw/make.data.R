library(photobiology)
library(dplyr)

SetlowTUV.spct <- read.table("./data-raw/doserates_SetlowTUV.txt",
                             col.names = c("w.length", "s.e.response"))

SetlowTUV.spct <- mutate(SetlowTUV.spct,
                         s.q.response = s.e.response / w.length * 300)
setResponseSpct(SetlowTUV.spct)


CIE2008_lef2deg.spct <- read.csv("./data-raw/logCIE2008v2q_1.csv",
                                 header=FALSE,
                                 col.names = c("w.length", "s.q.response"))
CIE2008_lef2deg.spct <- mutate(CIE2008_lef2deg.spct,
                               s.q.response = 10^s.q.response)
CIE2008_lef2deg.spct <- mutate(CIE2008_lef2deg.spct,
                               s.e.response = s.q.response * w.length / 546)
setResponseSpct(CIE2008_lef2deg.spct)


CIE1924_lef.spct <- read.csv("./data-raw/logvl1924q_1.csv",
                             header=FALSE,
                             col.names = c("w.length", "s.q.response"))

CIE1924_lef.spct <- mutate(CIE1924_lef.spct,
                               s.q.response = 10^s.q.response)
CIE1924_lef.spct <- mutate(CIE1924_lef.spct,
                               s.e.response = s.q.response * w.length / 550.5)
setResponseSpct(CIE1924_lef.spct)


CIE1951_scotopic_lef.spct <- read.csv("./data-raw/logscvlq_1.csv",
                                      header=FALSE,
                                      col.names = c("w.length", "s.q.response"))

CIE1951_scotopic_lef.spct <- mutate(CIE1951_scotopic_lef.spct,
                           s.q.response = 10^s.q.response)
CIE1951_scotopic_lef.spct <- mutate(CIE1951_scotopic_lef.spct,
                           s.e.response = s.q.response * w.length / 504)
setResponseSpct(CIE1951_scotopic_lef.spct)

save(SetlowTUV.spct, CIE2008_lef2deg.spct, CIE1924_lef.spct,
     CIE1951_scotopic_lef.spct,
     file = "./data/BSWF-spectra.rda")
