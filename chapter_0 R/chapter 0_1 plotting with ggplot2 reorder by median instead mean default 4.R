#### ggplot_mpg_reorder_class_hwy_boxplot_jitter_median ####
p <- ggplot(mpg, aes(x = reorder(class, hwy, FUN = median), y = hwy))
p <- p + geom_boxplot(alpha = 0.5)
p <- p + geom_point(position = "jitter")
print(p)