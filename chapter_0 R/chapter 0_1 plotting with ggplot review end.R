#### Review ####
library(ggplot2)
?mpg
head(mpg)
str(mpg)
summary(mpg)
p <- ggplot(mpg, aes(x = cty, y = hwy))
p <- p + geom_point(aes(colour = class, size = cyl, shape = drv), alpha = 0.5, position = "jitter")
p <- p + geom_boxplot()
p <- p + facet_grid(drv ~ cyl)
p <- p + facet_wrap(~ class)
print(p)
reorder(mpg$class, mpg$hwy, FUN = median)