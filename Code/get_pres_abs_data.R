################################################################
#### Global analysis for arboreality vs fossoriality
#### Brunno Oliveira, 2017
#### University of Florida, Gainesville, FL
################################################################

### Get unique shape file for each species

library(sp)
library(rgdal)
library(raster)
library(letsR)
library(maptools)

setwd("D:/GIS/Biodiversity/Distributions/")

# Amphibians
path2save <- "C:/Users/brunno.oliveira/Dropbox (Personal)/Arboreality_II/Code/"
data <- readOGR(dsn= "AMPHIBIANS/AMPHIBIANS.shp",layer="AMPHIBIANS")
occr <- lets.presab(data, xmn = -180, xmx = 180, ymn = -90, ymx = 90, resol = 1, crs = CRS('+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0'))
save.image(paste(path2save,"amphibians_pres_abs.RData",sep = ""))

# CLEAN ENVIRONMENT
rm(list=ls())
gc()

# Mammals
path2save <- "C:/Users/brunno.oliveira/Dropbox (Personal)/Arboreality_II/Code/"
data <- readOGR(dsn= "TERRESTRIAL_MAMMALS/TERRESTRIAL_MAMMALS.shp",layer="TERRESTRIAL_MAMMALS")
occr <- lets.presab(data, xmn = -180, xmx = 180, ymn = -90, ymx = 90, resol = 1, crs = CRS('+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0'))
save.image(paste(path2save,"mammals_pres_abs.RData",sep = ""))

# CLEAN ENVIRONMENT
rm(list=ls())
gc()

# Birds
path2save <- "C:/Users/brunno.oliveira/Dropbox (Personal)/Arboreality_II/Code/"
path2folder <- "~/Birds/All"
occr <- lets.presab.birds(path2folder, count = T,
                          xmn = -180, xmx = 180, ymn = -90, ymx = 90, 
                          resol = 1, crs = CRS('+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0'))
View(occr[1:4,1:4])

save.image(paste(path2save,"birds_pres_abs.RData",sep = ""))

### END ###