#### stem-and-leaf ####
# stem-and-leaf plot

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

stem(hb)

##
##  The decimal point is 1 digit(s) to the right of the |
##
##  13 | 28
##  14 | 0124567889
##  15 | 000458

# scale=2 makes plot roughly twice as wide
stem(hb, scale=2)

##
##  The decimal point is 1 digit(s) to the right of the |
##
##  13 | 2
##  13 | 8
##  14 | 0124
##  14 | 567889
##  15 | 0004
##  15 | 58

# scale=5 makes plot roughly five times as wide
stem(hb, scale=5)

##
##  The decimal point is at the |
##
##  132 | 0
##  134 |
##  136 |
##  138 | 0
##  140 | 00
##  142 | 0
##  144 | 00
##  146 | 00
##  148 | 000
##  150 | 000
##  152 |
##  154 | 00
##  156 |
##  158 | 0