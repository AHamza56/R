# Build-in data sets of R----
data() # to view the list of data sets
data('iris')
tibble(iris)

# Basic R Functions----
  # 1: scatter plot
plot(x = iris$Sepal.Length, y = iris$Sepal.Width)
  # 2: Histogram
hist(iris$Sepal.Length) # how normal is the data
  # 3: Box plot
boxplot(iris$Sepal.Width)
boxplot(iris$Sepal.Length ~ iris$Species)
  # 4: violin plot: #this is not a basic function we can use ggplot 2
  
  # 5: Dot chart
dotchart(iris$Sepal.Width)
  # 6: Pair plot
pairs(iris, panel = panel.smooth)





