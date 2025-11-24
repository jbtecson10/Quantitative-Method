#### ggplot_mpg_cty_displ_colour_fl_size_year_shape_drv_alpha ####
p <- ggplot(mpg, aes(x = displ, y = hwy ))
p <- p + geom_point(aes(colour = class, size = cyl, shape = drv)
                    , alpha = 1/4) # alpha is the opacity
print(p)