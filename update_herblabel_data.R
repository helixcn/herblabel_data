######## Data source for the herblabel package ################
######## if any update is needed, edit the following files and regenerate the rda files.

setwd("C:\\Jinlong\\github packages\\herblabel_data")
library(openxlsx)
rm(list = ls())
spfrps        <- read.xlsx("spfrps.xlsx")
spfoc         <- read.xlsx("spfoc.xlsx")
pgenus        <- read.xlsx("APGIII_GENERA.xlsx")
latin_dat <- read.xlsx("latin_source.xlsx")
latin_source  <- latin_dat[,1]
rm(latin_dat)

tpl     <- read.xlsx("TPLnames.xlsx")
tplsplist     <- unique(c(paste(tpl[,1], tpl[,2], sep = " "), spfrps$SCIENTIFIC_NAME, spfoc$SCIENTIFIC_NAME))
rm(tpl)

package.skeleton(name = "herblabel", list = ls())
