#### ggplot_mpg_cty_displ_colour_manufacturer_size_year_shape_fl ####
p <- ggplot(mpg, aes(x = displ, y =hwy ))
p <- p + geom_point(aes(colour = class, size = cyl, shape = drv))
print(p)