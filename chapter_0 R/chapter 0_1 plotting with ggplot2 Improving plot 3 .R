#### ggplot_mpg_class_cty ####
p <- ggplot(mpg, aes(x = class, y = hwy))
p <- p + geom_point()
print(p)