#### boxplot ####

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

# Five-number summary
fivenum(hb)

## [1] 132.0 142.0 147.5 150.0 158.0

# boxplot using R base graphics
par(mfrow=c(1,1))
boxplot(hb, horizontal=TRUE
        , main="Modern Englishman", xlab="head breadth (mm)")