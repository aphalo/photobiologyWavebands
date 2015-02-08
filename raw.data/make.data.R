library("photobiology")
SetlowTUV.spct <- read.table("doserates_SetlowTUV.txt", col.names = c("w.length", "s.e.response"))
setResponseSpct(SetlowTUV.spct)
SetlowTUV.spct[ , s.q.response := s.e.response / w.length * 300]

CIE2008_lef2deg.spct <- read.csv("logCIE2008v2q_1.csv", header=FALSE, col.names = c("w.length", "s.q.response"))
CIE2008_lef2deg.spct$s.q.response <- 10^CIE2008_lef2deg.spct$s.q.response
setResponseSpct(CIE2008_lef2deg.spct)
CIE2008_lef2deg.spct[ , s.e.response := s.q.response * w.length / 546]

CIE1924_lef.spct <- read.csv("logvl1924q_1.csv", header=FALSE, col.names = c("w.length", "s.q.response"))
CIE1924_lef.spct$s.q.response <- 10^CIE1924_lef.spct$s.q.response
setResponseSpct(CIE1924_lef.spct)
CIE1924_lef.spct[ , s.e.response := s.q.response * w.length / 550.5]

CIE1951_scotopic_lef.spct <- read.csv("logscvlq_1.csv", header=FALSE, col.names = c("w.length", "s.q.response"))
CIE1951_scotopic_lef.spct$s.q.response <- 10^CIE1951_scotopic_lef.spct$s.q.response
setResponseSpct(CIE1951_scotopic_lef.spct)
CIE1951_scotopic_lef.spct[ , s.e.response := s.q.response * w.length / 504]

save(SetlowTUV.spct, CIE2008_lef2deg.spct, CIE1924_lef.spct, CIE1951_scotopic_lef.spct,
     file = "../data/BSWF.spectra.rda")
