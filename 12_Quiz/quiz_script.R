# Libraries----
library(ggplot2)
library(Readr)
library(tidyr)
library(Readr)
library(colorspace)
library(tidyverse)
library(agricolae)
library(multcomp)
library(dplyr)
library(stats)
library(readxl)
# Importing Data----
df <- read_csv("cancer_b.csv", col_types = cols(Id = col_number(), 
      `Radius (mean)` = col_number(), `Texture (mean)` = col_number(), 
`Perimeter (mean)` = col_number(), `Area` = col_number(), 
`Smoothness (mean)` = col_number(), `Compactness` = col_number(), 
`Concavity (mean)` = col_number(), `Concave points (mean)` = col_number(), 
`Symmetry (mean)` = col_number(), `Fractal dimension (mean)` = col_number(), 
`Radius (se)` = col_number(), `Texture (se)` = col_number(), 
`Smoothness (se)` = col_number(), `Compactness (se)` = col_number(), 
`Concavity (se)` = col_number(), `Concave points (se)` = col_number(), 
`Symmetry (se)` = col_number(), `Fractal dimension (se)` = col_number(), 
`Radius (worst)` = col_number(), `Texture (worst)` = col_number(), 
`Perimeter (worst)` = col_number(), `Area (worst)` = col_number(), 
`Smoothness (worst)` = col_number(), 
`Compactness (worst)` = col_number(), 
`Concavity (worst)` = col_number(), `Concave points (worst)` = col_number(), 
`Symmetry (worst)` = col_number(), `Fractal dimension (worst)` = col_number()))
View(df)
# Basics----
str(df) # Column names
summary(df) # mean, max and min... etc
nrow(df) # Number of rows
ncol(df) # number of columns
quantile(df$`Radius (mean)`, .25) # first quantile
quantile(df$`Radius (mean)`, .50) # second quantile
quantile(df$`Radius (mean)`, .75) # third quantile
sd(df$`Radius (mean)`) # Standard deviation
var(df$Height) # Variance
# Statistics---- 
model <- aov(Compactness ~ Area, data = df)
out <- HSD.test(model, "Area",group = TRUE,console = TRUE, main = 'Tukey test')
View(out)
# Visualization----
ggplot(df,aes(Compactness,Area, colour=Diagnosis))+
  geom_boxplot()+
  labs(x="Compactness",
       y="Area",
       title = 'Cancer',
       subtitle = 'Made with ggplot2')+
  theme_bw()+
  ggsave('ggplot.png', units = 'in',
         width = 8,
         height = 4,
         dpi = 300)

