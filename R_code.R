### Setting up the packages, we'll need:
library(knitr)
knitr::opts_chunk$set(echo = FALSE)
install.packages("rigr")
### -----------------------------------------------------------
### Reading in the data.
library(tidyverse)
wcgs <- read_csv("~/Desktop/UW MS Biostat/BIOST Winter 2022/Biost 515/R dataset/wcgs.csv")
head(wcgs)
### -----------------------------------------------------------
### Q1
## plot scatterplot of weight on the vertical axis and height 
## on the horizontal axis
jpeg("~/Desktop/UW MS Biostat/BIOST Winter 2022/Biost 515/R work/HW1/jpg_q1_scatterplot.jpg", 
     width=900, height=600)
plot(weight0 ~ height0, data=wcgs, main ="Weight vs. Height", 
     xlab="height (inches)", ylab="Weight (lbs)")
dev.off()

### -----------------------------------------------------------
### Q2
## Here's a linear model for wcgs dataset using rigr:regress
wcgs %>% 
  select(height0, weight0) 

library(rigr)  
mod1 <- regress("mean", weight0 ~ height0, data = wcgs)
mod1 %>% 
  coef() %>% 
  as.data.frame() %>% 
  select(c("Estimate", "Naive SE", "Robust SE", "95%L", "95%H",
           "Pr(>|t|)"))

### -----------------------------------------------------------
### Q3
### Here's the Robust and naive SE
mod1 %>% 
  coef() %>% round(3) %>% 
  as.data.frame() %>% 
  select(c("Naive SE", "Robust SE"))

### -----------------------------------------------------------
### Q6
### Convert height from inch to cm, then run a linear model 
### using rigr:regress
wcgs_cm <- wcgs %>% 
  select(height0, weight0) %>% 
  mutate(height0_cm = height0*2.54) 

mod2 <- regress("mean", weight0 ~ height0_cm, data = wcgs_cm)
mod2 %>% 
  coef() %>%
  as.data.frame() %>% 
  select(c("Estimate", "Naive SE", "Robust SE", "95%L", "95%H", 
           "Pr(>|t|)"))

### -----------------------------------------------------------
### Q7
### Average weight at height = 73 inches
wcgs %>% 
  select(height0, weight0) %>% 
  filter(height0 == 73) %>% 
  summary()

### -----------------------------------------------------------