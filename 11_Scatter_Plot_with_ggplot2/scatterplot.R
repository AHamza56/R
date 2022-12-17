# scatter plot 
library(ggplot2)
data('cars')
View(cars)

ggplot(data = cars, aes(x=speed, y=dist))+geom_point()+
  geom_smooth(method='lm', se=T, level=0.95)

# scatter plot with multi lines
data('Orange')
ggplot(data = Orange, aes(age, circumference, colour=Tree))+
  geom_point(size=2, shape=16)
# scatter plot separate by shape
ggplot(data = Orange, aes(age, circumference, colour=Tree))+
  geom_point(size=3, aes(alpha=Tree))+
  geom_line(aes(linetype=Tree), size=1)+
  labs(x='age',y='circumference', title='graph')


# bubble plot
install.packages('viridis')
library(viridis)
?viridis
data('quakes')
nrow(quakes)
q_s <- quakes[seq(from=1,to=1000,by=10),]
nrow(q_s)

ggplot(data = q_s, aes(x=lat,y=long))+
  geom_point(aes(size=mag,colour=mag))+
  guides(size=F)+
  scale_colour_viridis_b(option='B')+
  scale_size_continuous(range=c(1,9))+
  labs= (x='latitude',y='Longitude', title="Graph")+
  ggsave('bubbleplot.pdf')

# Jitter plot
data('diamonds')
nrow(diamonds)
d_s <- diamonds[seq(from=1,to=53940,by=1000),]
nrow(d_s)
# scatter plot 
library(ggplot2)
data('cars')
View(cars)

ggplot(data = cars, aes(x=speed, y=dist))+geom_point()+
  geom_smooth(method='lm', se=T, level=0.95)

# scatter plot with multi lines
data('Orange')
ggplot(data = Orange, aes(age, circumference, colour=Tree))+
  geom_point(size=2, shape=16)
# scatter plot separate by shape
ggplot(data = Orange, aes(age, circumference, colour=Tree))+
  geom_point(size=3, aes(alpha=Tree))+
  geom_line(aes(linetype=Tree), size=1)+
  labs(x='age',y='circumference', title='graph')


# bubble plot
install.packages('viridis')
library(viridis)
?viridis
data('quakes')
nrow(quakes)
q_s <- quakes[seq(from=1,to=1000,by=10),]
nrow(q_s)

ggplot(data = q_s, aes(x=lat,y=long))+
  geom_point(aes(size=mag,colour=mag))+
  guides(size=F)+
  scale_colour_viridis_b(option='B')+
  scale_size_continuous(range=c(1,9))+
  labs= (x='latitude',y='Longitude', title="Graph")+
  ggsave('bubbleplot.pdf')

# Jitter plot
data('diamonds')
nrow(diamonds)
d_s <- diamonds[seq(from=1,to=53940,by=1000),]
nrow(d_s)
# scatter plot 
library(ggplot2)
data('cars')
View(cars)

ggplot(data = cars, aes(x=speed, y=dist))+geom_point()+
  geom_smooth(method='lm', se=T, level=0.95)

# scatter plot with multi lines
data('Orange')
ggplot(data = Orange, aes(age, circumference, colour=Tree))+
  geom_point(size=2, shape=16)
# scatter plot separate by shape
ggplot(data = Orange, aes(age, circumference, colour=Tree))+
  geom_point(size=3, aes(alpha=Tree))+
  geom_line(aes(linetype=Tree), size=1)+
  labs(x='age',y='circumference', title='graph')


# bubble plot
install.packages('viridis')
library(viridis)
?viridis
data('quakes')
nrow(quakes)
q_s <- quakes[seq(from=1,to=1000,by=10),]
nrow(q_s)

ggplot(data = q_s, aes(x=lat,y=long))+
  geom_point(aes(size=mag,colour=mag))+
  guides(size=F)+
  scale_colour_viridis_b(option='B')+
  scale_size_continuous(range=c(1,9))+
  labs= (x='latitude',y='Longitude', title="Graph")+
  ggsave('bubbleplot.pdf')

# Jitter plot
data('diamonds')
nrow(diamonds)
d_s <- diamonds[seq(from=1,to=53940,by=1000),]
nrow(d_s)
ggplot(data = d_s, aes(cut, price, colour=cut))+ geom_jitter()