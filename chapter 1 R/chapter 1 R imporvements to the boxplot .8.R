# ------------------------------
# Modern Englishman head breadth dataset
# ------------------------------
hb <- c(
  131, 136, 138, 139, 140, 140, 141, 142, 143, 143,
  144, 144, 144, 145, 145, 145, 145, 146, 146, 146,
  147, 147, 147, 147, 148, 148, 148, 148, 149, 149,
  150, 150, 150, 150, 150, 151, 151, 152, 152, 153,
  153, 153, 154, 154, 155, 156, 156, 157, 159, 160
)

# Set up 3 rows, 1 column layout
par(mfrow = c(3, 1))

# ------------------------------
# 1. Histogram with density plot
# ------------------------------
hist(hb, 
     freq = FALSE,
     main = "Histogram with kernel density plot, Modern Englishman")
points(density(hb), type = "l")
rug(hb)

# ------------------------------
# 2. Violin plot
# ------------------------------
library(vioplot)

vioplot(hb, horizontal = TRUE, col = "gray")
title("Violin plot, Modern Englishman")

# Add missing "1" on the left (y-axis)
axis(2, at = 1, labels = "1")

# Add missing bottom value under the violin (x-axis)
axis(1)

# ------------------------------
# 3. Boxplot
# ------------------------------
boxplot(hb,
        horizontal = TRUE,
        main = "Boxplot, Modern Englishman",
        xlab = "head breadth (mm)")
