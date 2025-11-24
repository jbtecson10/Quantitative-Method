#### Installing ####
# only needed once after installing or upgrading R
install.packages("ggplot2")

#### Library ####
# each time you start R
library(ggplot2)

?mpg

head(mpg)

summary(mpg)
#### ggplot_mpg_displ_hwy
# specify the dataset and variables

  p <- ggplot(mpg, aes(x = displ, y = hwy))
  p <- p +  geom_point()#add a plot layer with points
  print(p)