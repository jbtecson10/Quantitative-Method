#### ggplot_mpg_displ_hwy_facet ####

# Start by creating a basic scatterplot
p <- ggplot(mpg, aes(x = displ, y = hwy))
p <- p + geom_point()

## Two methods
# facet_grid(rows ~ cols) for 2D grid, "." for no split
# facet_wrap(~ var) for 1D ribbon wrapped into 2D

# Examples of subsetting the scatterplot in facets
p1 <- p + facet_grid(. ~ cyl)      # columns are cyl categories
p2 <- p + facet_grid(drv ~ .)      # rows are drv categories  
p3 <- p + facet_grid(drv ~ cyl)    # both rows and columns
p4 <- p + facet_wrap(~ class)      # wrap plots by class category

# Plot all four in one arrangement
library(gridExtra)
grid.arrange(p1, p2, p3, p4, ncol = 2)