library(readxl)
my_data <- read_excel("df.xlsx", sheet = "Sheet1", 
                 col_types = c("text", "numeric", "numeric"))
View(my_data)

str(my_data)
head(my_data)
tail(my_data)
