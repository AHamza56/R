# Libraries----
library(ggplot2)
library(Readr)
library(tidyr)
library(colorspace)
library(tidyverse)
library(agricolae)
library(multcomp)
library(dplyr)
library(stats)
library(writexl)
# Importing Data----
cancer <- read_csv("cancer_b.csv", col_types = cols(Diagnosis = col_character(), 
`Area (mean)` = col_number(), `Area (se)` = col_number(), 
`Area (worst)` = col_number()))
View(cancer)
# Renaming some columns----
df <- cancer %>%
  rename('area_m' = 'Area (mean)',
         'radius_m' = 'Radius (mean)')
view(df)
# Exporting new data set----
write_xlsx(df, 
           path = 'E:\\Meta_Analysis\\r_with_aammar\\13_assignment\\df.xlsx')
# Basics----
str(df) # Column names
summary(df) # mean, max and min... etc
nrow(df) # Number of rows
ncol(df) # number of columns
quantile(df$`area_m`, .25) # first quantile
quantile(df$`area_m`, .50) # second quantile
quantile(df$`area_m`, .75) # third quantile
sd(df$`area_m`) # Standard deviation
var(df$`area_m`) # Variance
var(df$`area_m`) # Variance
dim(df) # shape of data
head(df) # First 6 rows 
tail(df) # last 6 rows 
tibble(df) # To know whether our data is in good form
# Statistics---- 
a1 <- aov(df$`radius_m` ~ df$`area_m`)
summary(a1)
# visualization----
p <- ggplot(df, aes(area_m, radius_m)) + geom_point(color="green")+
  geom_smooth(method="lm")+
  labs(x="Area (Mean)",
       y= "Radius (Mean)", 
       title = "Scatter_plot")
p + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                             panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
ggsave('scatter_plot.tiff', units = 'in',
       width = 8,
       height = 4,
       dpi = 300)
  # Another one
g <- ggplot(df, aes(area_m, radius_m)) +
  geom_boxplot(color="Blue")+
  labs(x="Area (Mean)",
       y= "Radius (Mean)", 
       title = "Boxplot")
g + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                       panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
ggsave('boxplot.tiff', units = 'in',
       width = 8,
       height = 4,
       dpi = 300)
