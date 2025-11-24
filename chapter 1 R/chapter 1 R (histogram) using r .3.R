#### hist ####
# histogram using R base graphics
# par() gives graphical options
# mfrow = "multifigure by row" with 1 row and 3 columns

# First, create the hb vector
hb <- c(131, 135, 139, 139, 140, 141, 141, 142, 143, 143, 144, 144, 
        145, 146, 147, 147, 147, 147, 147, 147, 147, 148, 148, 148,
        149, 149, 149, 149, 149, 149, 149, 149, 149, 149, 149, 149,
        149, 149, 149, 150, 150, 150, 151, 151, 151, 151, 151, 151,
        151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151,
        151, 151, 152, 152, 153, 153, 153, 153, 153, 153, 154, 155,
        157, 157, 159, 160)

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