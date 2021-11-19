# introduction

1+1

# Preparation de l'environnement de travail

install.packages("tidyverse")
install.packages("visdat")

library(tidyverse)
library(visdat)


# charger les données dans R

expt1<-read_tsv("session1/data/burghardt_et_al_2015_expt1.txt")

# Verifier les données

dim(expt1)

glimpse(expt1)

summary(expt1)


vis_dat(expt1)

#Enlever les NA
expt1_noNA<-na.omit(expt1)

vis_dat(expt1_noNA)




