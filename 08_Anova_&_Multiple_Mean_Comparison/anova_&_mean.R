library(readxl)
x <- read_excel("df2.xlsx", col_types = c("text", 
                                          "numeric", "numeric", "text"))
View(x)

# Box plot
boxplot(x$Height ~ x$Crop)

# Multiple comparison of means----
# 1- Tukey. HSD test:
model <- aov(Height ~ Crop, data = x)
out <- HSD.test(model, "Crop", group = TRUE,console = TRUE, main = 'Tukey test')
plot(out)
# 2- Least significant test
model <- aov(Height ~ Crop, data = x)
out <- LSD.test(model, "Crop", group = TRUE,console = TRUE, main = 'LSD test')
plot(out)
# 3- Duncan test
model <- aov(Height ~ Crop, data = x)
out <-duncan.test(model,"Crop",group = TRUE,console = TRUE,main = 'Duncan test')
plot(out)

# Grouping
boxplot(Height ~ Crop * Water, data = x)
model1 <- aov(Height ~ Crop * Water, data = x)
out1 <- HSD.test(model1,c("Crop","Water"),
                 group = TRUE,console = TRUE, main = 'Tukey test')
plot(out1, las=2, main = 'Tukey Test has applied')

# How to save a graph in high quality
jpeg(file='Tukey test plot.png',
     width = 6, height = 4, units = 'in', res = 300)
plot(out1, las=2, main = 'Tukey Test has applied')
dev.off()

