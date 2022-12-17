# Load data set
data('iris') 

# Plots
  # 1: Scatter plot
plot( x = iris$Petal.Length, y = iris$Petal.Width, main = 'Scatter plot')
  # 2: Bar plot
barplot(iris$Petal.Length, main = 'Bar plot')
  # 3: Histogram
hist(iris$Petal.Length,xlab = 'Lenght of Petal', main="Histogram",
     col="darkgrey", border=FALSE)
  # 4: Box plot
boxplot(iris$Petal.Width, col = "Green")
  # 6: Mosaic plot
mosaicplot(iris$Petal.Width ~ iris$Petal.Length)
  # 7: strip chart
stripchart(iris$Petal.Length) # for single variable
stripchart(iris$Petal.Length ~ iris$Petal.Width, main = 'stripchart')
# for two variables
  # 8: qqnorm plot
qqnorm(iris$Petal.Width)
