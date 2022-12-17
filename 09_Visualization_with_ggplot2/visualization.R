library(ggplot2)
# Uses of ggplot:----
  # 1- ggplot (function)
  # 2- provide data
  # 3- mapping (x-axis, y-axis)
  # 4- geometry (scatter, box,)
library(readxl)
x <- read_excel("ggdata.xlsx", sheet = "gg1", 
                col_types = c("text", "numeric", "text", 
                              "text"))
# Visualization
  # 1- Scatter plot
ggplot(x,aes(crop,height, fill=water))+
  geom_point(size=2)+
  geom_line()
# 2- Box plot
ggplot(x,aes(crop,height, colour=water))+
  geom_boxplot()+
  geom_point(size=2, colour='Green', alpha=0.7)+
  facet_wrap(~fert.type)+
  labs(x="Crop type",
       y="Height (cm)",
       title = 'Plant Growth',
       subtitle = 'Made with ggplot2')+
  theme_bw()+
  ggsave('ggplot.png', units = 'in',
         width = 8,
         height = 4,
         dpi = 300)

