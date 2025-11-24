#### ggplot_mpg_reorder_class_hwy_jitter_boxplot ####
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_point(position = "jitter")
p <- p + geom_boxplot(alpha = 0.5)
print(p)