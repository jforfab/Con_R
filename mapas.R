rm(list=ls())
library(dplyr)
library(survey)
library(srvyr)
library(timeDate)
library(tidyverse)
library(foreign)
library(tidyr)
library(stringr)
library(datawizard)
# library(xlsx)
library(openxlsx)
library(readxl)
library(srvyr)
library(haven)
getwd()
setwd("D:/Trabajo/bases_diana")
base <- read.spss("Base de datos completa.sav")
base <- read_sav("Base de datos completa.sav")
base %>% str()
base2 <- base[sapply(base,is.numeric)]
base2 %>% data_tabulate()
for(i in 1:dim(base2)[2]){
  a<- is.na(base2[,i]) 
  base3[a,i] <- 0
}
m <- base3 %>% as.matrix()
heatmap(base3 %>% as.matrix(), scale = "column")
heatmap(base3[,1:10] %>% as.matrix(), scale = "column")
# heatmap(base3 %>% as.numeric(),scale = "column", Colv = NA)
heatmap(m, col = hcl.colors(50))
heatmap(m, col = hcl.colors(500))
heatmap(m, col = hcl.colors(5))
144/12

# Dispositivo JPEG
for (i in 1:12) {
    jpeg(paste0("mapa_calor_",i,".jpeg"), quality = 75)
    
    # Código
    # plot(rnorm(20))
    heatmap(base3[,(1+(i-1)*12):((i)*12)] %>% as.matrix(), scale = "column")
    # Cerramos el dispositivo
    dev.off()
  
}
