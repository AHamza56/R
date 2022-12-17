library(readr) # importing libraries
remove(arsenic_lead_df) # removing unsatisfactory data
df <- read_csv("arsenic_&_lead_df.csv", col_types = cols(YEAR = col_number(), 
      num_of_papers = col_number(), hm_type = col_character()))
View(df)

# installing some important libraries ------
install.packages("ggplot2")
install.packages("tidyr")
install.packages('Readr')
install.packages('colorspace')
install.packages('tidyverse')
install.packages("agricolae")
install.packages("multcomp")
install.packages("dplyr")


update.packages(ask = FALSE)

# how to update R via Rstudio?---- 
# step: 1
install.packages('installr')
library(installr)
updateR()

help("ggplot2")

# How to set directories----
getwd()
setwd() # how to set a new directory


# Working on data set:
str(df)
summary(df)
library(tidyverse)
tibble(df) # to view the data in a good form
# plot
plot(df)








