#### ggplot_mpg_cty_hwy_jitter 
p <- ggplot(mpg, aes (x = cty, y = hwy)) 
p<- p + geom_point()
print(p)
