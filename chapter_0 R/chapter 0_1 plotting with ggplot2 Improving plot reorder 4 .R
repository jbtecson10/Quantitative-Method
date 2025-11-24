#### ggplot_mpg_reorder_class_cty ####
p <- ggplot(mpg, aes(x = reorder(class, cty), y = cty))
p <- p + geom_point()
print(p)