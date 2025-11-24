#### ggplot_mpg_reorder_class_hwy_jitter ####
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_point(position = "jitter")
print(p)