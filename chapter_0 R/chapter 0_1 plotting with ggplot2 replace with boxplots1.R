#### ggplot_mpg_reorder_class_hwy_boxplot ####
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_boxplot()
print(p)
