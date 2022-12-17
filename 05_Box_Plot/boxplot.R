library(readxl)
my_data <- read_excel("df.xlsx", sheet = "Sheet1", 
                      col_types = c("text", "numeric", "numeric"))
View(my_data)

# box plot
boxplot(my_data$Height ~ my_data$Crop)

# labeling
boxplot(Height ~ Crop, data=my_data)

# adding 'title' or 'main' along with axis:
boxplot(Height ~ Crop, data = my_data, main = 'Boxplot of experiment',
        xlab = 'Type of crop', ylab = 'Plant height (cm)')
# Colouring
boxplot(Height ~ Crop, data = my_data, main = 'Boxplot of experiment',
        xlab = 'Type of crop', ylab = 'Plant height (cm)', 
        col = 'Grey', border = '#0a0a0a')

# Grouping of treatment
remove(data2)
data2 <- read_excel("df2.xlsx", col_types = c("text", 
                                            "numeric", "numeric", "text"))
View(data2)
boxplot(data2$Height ~ data2$Crop * data2$Water)









