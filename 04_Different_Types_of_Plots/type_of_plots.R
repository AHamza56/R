library(readxl)
library(readxl)
my_data <- read_excel("df.xlsx", sheet = "Sheet1", 
                 col_types = c("text", "numeric", "numeric"))
View(my_data)

# strip chart
stripchart(my_data$Height) # for single variable
stripchart(my_data$Height ~ my_data$Crop) # for two variables

# Histogram chart
hist(my_data$Height)
hist(my_data$Weight)

# scatter plot
plot(my_data$Height, my_data$Weight)

# qqnorm plot
qqnorm(my_data$Height)

# barplot
barplot(my_data$Height)

# mosaic plot
mosaicplot(~ my_data$Crop+my_data$Height)



