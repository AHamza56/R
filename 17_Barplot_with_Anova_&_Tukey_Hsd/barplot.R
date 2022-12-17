# Important packages
library(ggplot2)
install.packages('ggthemes')
library(ggthemes)
install.packages("multcompView")
library(multcompview)
install.packages('dplyr')
library(dplyr)
# Loading data set
data('chickwts')
tibble(chickwts)
# Calculate mean and SD to show on error bars----
mean_data <- group_by(chickwts, feed) %>%
  summarise(weight_mean=mean(weight), sd = sd(weight))%>%
  arrange(desc(weight_mean))
tibble(mean_data)
# Performing statistical analysis
library(stats)
anova <- aov(weight ~ feed, data = chickwts)
summary(anova)
# Tukey test
tukey <- TukeyHSD(anova)
tukey
# multcompview package
group_letters <- multcompLetters4(anova,tukey)
group_letters
# Extracting group letters
group_letters <- as.data.frame.list(group_letters$feed)
group_letters
# Adding to the mean data
mean_data$group_letters <- group_letters$Letters
tibble(mean_data)
# Drawing the Publication ready Barplot in ggplot2
p <- ggplot(mean_data, aes(x=feed,y=weight_mean))+
  geom_bar(stat = 'identity', aes(fill = feed), show.legend = FALSE,width=0.6)+
  geom_errorbar(aes(ymin=weight_mean-sd, ymax=weight_mean+sd),width=0.1)+
  geom_text(aes(label = group_letters, y = weight_mean+sd), vjust=-0.4)+
  scale_fill_brewer(palette = 'BrBG', direction = 1)+
  labs( x = 'Feed Type',
  y = 'Chicken Weight (g)',
  title = 'Publication Ready Barplot',
  subtitle = 'Made By #Rwithaammar',
  fill = 'Feed Type')+ 
  ylim(0,410)+
  ggthemes::theme_par(); p
# Saving upto 4k barplot
tiff('Barplot.tiff', units = 'in', width = 10, height = 6, res = 300,
     compression = 'lzw')
p
dev.off()