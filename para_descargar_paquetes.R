# install.packages("miniCRAN")
library(miniCRAN)

pkgs <- c("tidyverse", "data.table", "RODBC", "RJDBC", "fasttime", "tidyr", 
          "knitr", "randomForest", "RMySQL", "jsonlite","timeDate","foreign","installr","ggplotR","stringr", "stringi")
pkgList <- pkgDep(pkgs, type = "source", suggests = T)
direccion<-getwd()
makeRepo(pkgList, path=direccion, type = c("source"))
# makeRepo(pkgList, path="/path/to/packages/", type = c("source"))
# https://r-basico.aprendr.org/actualiza_r_y_rstudio_windows.html
# https://stackoverflow.com/questions/51769231/r-how-do-i-install-packages-and-dependencies-offline
# https://rpubs.com/ramirabal/instalando_packages_en_entorno_sin_internet
# installing/loading the package:
if(!require(installr)) {
  install.packages("installr"); require(installr)} #load / install+load installr

# using the package:
updateR() # this will start the updating process of your R installation.  It will check for newer versions, and if one is available, will guide you through the decisions you'd need to make.

install.packages('tidyverse', repos = "file:///home/local_repository/")
pkgAvail(
  repos = getOption("repos"),
  type = "source",
  Rversion = R.version,
  quiet = FALSE
)
miniCRAN::updateRepoIndex(direccion)
old.packages()
update.packages()
###################################################################################
install.packages("remotes")
library(remotes)
remotes::install_github("ropensci/osmdata")
####################################################################################
pkg.list <- installed.packages()[is.na(installed.packages()[ , "Priority"]), 1]
save(pkg.list, file="pkglist.Rdata")
####################################################################################
update.packages(checkBuilt=TRUE)
##########################################################################################
install.packages('data.table', dependencies = TRUE, INSTALL_opts = '--no-lock')
.libPaths()
library()
#######################################################################
#listar e instalar paquetes de R instalados en una pc
# installed.packages()
as.data.frame(installed.packages())->installed.packages
write.csv(installed.packages$Package,"installed.packages.csv")
# installed.packages$Package->a
######################################################################
pkgs<-read.csv("installed.packages.csv")
# b<-installed.packages$Package %>% as.character()
b<-installed.packages$Package 
###########################################################################
installed.packages<-read.csv("installed.packages.csv")
installed.packages1<-read.csv("installed.packages1.csv")
setdiff(installed.packages1$x,installed.packages$x)->a
# union<-merge(installed.packages,installed.packages1,all = T)
b<-union[,2 ]
# i=1
update.packages()
for (i in 1:length(b)) {
  install.packages(b[i])
}
install.packages(a)
# sessionInfo() 