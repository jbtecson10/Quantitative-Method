# boxplot using ggplot
library(ggplot2)
# first put displ vector into a data.frame
displ_df <- data.frame(displ = mpg$displ)
p <- ggplot(displ_df, aes(x = "displ", y = displ))
p <- p + geom_boxplot()
p <- p + coord_flip()
p <- p + labs(title = "Engine Displacement")
print(p)
