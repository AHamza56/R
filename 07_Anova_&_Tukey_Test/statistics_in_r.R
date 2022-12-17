library(readxl)
df <- read_excel("df2.xlsx", col_types = c("text", 
                    "numeric", "numeric", "text"))
View(df)
# Mean
mean(df$Height)
mean(df$Weight)
# Median
median(df$Height)
median(df$Weight)
# Minimum
min(df$Height)
# Maximum
max(df$Height)
# Range
range(df$Height)
# Quantile
quantile(df$Height, .25) # first
quantile(df$Height, .50) # second
quantile(df$Height, .75) # third
# Standard deviation
sd(df$Height)
# Variance
var(df$Height)
# How to get mean, variance, and standard deviation of two columns?
lapply(df[,2:3], mean)
lapply(df[,2:3], sd)
lapply(df[,2:3], var)
# How to get all these in one code?
summary(df)
# ANOVA -> Analysis of variance, whether 2 things are differing or not.
a1 <- aov(df$Height ~ df$Crop) # checking whether our anova is significant?
summary(a1) # *** Means crops are significantly differing from others
# Tukey HSD -> To find which crop is differing
TukeyHSD(a1) # If your value is below 0.5 then your value is significant
# Group, ANOVA
a2 <- aov(df$Height ~ df$Crop * df$Water)
summary(a2)
TukeyHSD(a2)
# For automatic lettering, install this package
install.packages("agricolae")
