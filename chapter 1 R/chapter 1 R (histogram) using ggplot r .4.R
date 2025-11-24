#### hist ####
# histogram using R base graphics
# par() gives graphical options
# mfrow = "multifigure by row" with 1 row and 3 columns

# First, create the hb vector with bell curve distribution
hb <- c(
  # Bin 130-135: 1 count
  132,
  # Bin 135-140: 1 count  
  138,
  # Bin 140-145: 4 counts
  141, 142, 143, 144,
  # Bin 145-150: 6 counts
  146, 147, 148, 148, 149, 149,
  # Bin 150-155: 4 counts
  151, 152, 153, 154,
  # Bin 155-160: 2 counts
  156, 158
)

# Set up 1 row, 3 columns layout
par(mfrow=c(1,3))

# main is the title, xlab is x-axis label (ylab also available)
hist(hb, main="Modern Englishman", xlab="head breadth (mm)")
# breaks are how many bins-1 to use

hist(hb, breaks = 15, main="Histogram, 15 breaks")
# freq=FALSE changes the vertical axis to density,
# so the total area of the bars is now equal to 1
hist(hb, breaks = 8, freq = FALSE, main="Histogram, density")

# Reset to single plot layout
par(mfrow=c(1,1))

# histogram using ggplot
library(ggplot2)
# first put hb vector into a data.frame
hb_df <- data.frame(hb)
p <- ggplot(hb_df, aes(x = hb))
# always specify a binwidth for the histogram (default is range/30)
# try several binwidths
p <- p + geom_histogram(binwidth = 5, color = "white", fill = "#3d3d3d", boundary = 130)
p <- p + labs(title = "Modern Englishman head breadth")
p <- p + xlab("hb")
p <- p + ylab("count")
p <- p + scale_x_continuous(breaks = seq(130, 160, by = 10))
p <- p + scale_y_continuous(breaks = seq(0, 6, by = 2), limits = c(0, 6.5))
p <- p + theme_minimal()
p <- p + theme(
  panel.grid.major = element_line(color = "white", size = 0.5),
  panel.grid.minor = element_line(color = "white", size = 0.25),
  panel.background = element_rect(fill = "#ebebeb", color = NA),
  plot.background = element_rect(fill = "#ebebeb", color = NA),
  plot.title = element_text(hjust = 0.5, size = 14)
)
print(p)