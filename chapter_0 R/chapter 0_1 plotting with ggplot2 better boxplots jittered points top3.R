#### ggplot_mpg_reorder_class_cty_boxplot_jitter ####
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_boxplot(alpha = 0.5)
p <- p + geom_point(position = "jitter")
print(p)