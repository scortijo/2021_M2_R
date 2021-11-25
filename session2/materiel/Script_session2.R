# script seance 2


library(tidyverse)
library(RColorBrewer)
library(ggpubr)

expt1 <- read_tsv("session2/data/burghardt_et_al_2015_expt1.txt")

ggplot(expt1, aes(x=genotype, y=days.to.flower,
                  colour=fluctuation))+
  geom_boxplot()+
  scale_color_brewer(palette = "Set2") +
  stat_compare_means(label="p.signif", 
                     method="t.test")

ggplot(expt1, aes(x=genotype, y=days.to.flower))+
  geom_boxplot()+
  stat_compare_means()

ggplot(expt1, aes(x=genotype, y=days.to.flower))+
  geom_boxplot()+
  stat_compare_means(method="anova")

# Correlation

ggplot(expt1, aes(x=blade.length.mm, 
                  y=rosette.leaf.num))+
  geom_point() +
  stat_cor()


ggplot(expt1, aes(x=blade.length.mm, 
                  y=rosette.leaf.num))+
  geom_point() +
  stat_cor(method="spearman")

ggplot(expt1, aes(x=blade.length.mm, 
                  y=rosette.leaf.num,
                  color=fluctuation))+
  geom_point() +
  stat_cor(method="spearman")

ggplot(expt1, aes(x=blade.length.mm, 
                  y=rosette.leaf.num,
                  color=fluctuation))+
  geom_point() +
  stat_cor(method="spearman") +
  geom_smooth()


# Exercice 1
# Ajouter le test statistique le plus appropié 
# aux deux graphiques suivant

ggplot(expt1, aes(fluctuation, rosette.leaf.num)) +
  geom_violin()+
  stat_compare_means()

ggplot(expt1, aes(days.to.bolt, days.to.flower))+
  geom_point() +
  stat_cor(label.x=20, label.y = 150)+
  geom_smooth()
  
