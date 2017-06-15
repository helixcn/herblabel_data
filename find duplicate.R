setwd("C:\\Jinlong\\github packages\\herblabel_data")
library(openxlsx)
dat <- read.xlsx("spfrps.xlsx")

rrr0 <- table(dat[,1])
rrr1 <- rrr0[rrr0 >1]
rrr <- data.frame(rrr1)
write.xlsx(rrr, "tables.xlsx")



