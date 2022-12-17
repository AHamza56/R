library(readxl)
my_data <- read_excel("df.xlsx", sheet = "Sheet1", 
                      col_types = c("text", "numeric", "numeric"))
View(my_data)

str(my_data)
head(my_data)
tail(my_data)

# creating plots:
plot(my_data)
# how to create box plot:
boxplot(my_data$Height, my_data$Weight)
# if we want to create it between 2 numerical varibles then use 'OR/~' function
boxplot(my_data$Height ~ my_data$Crop)
