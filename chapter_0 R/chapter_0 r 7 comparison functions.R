#### Comparison ####
# Here they are:  <  >  <=  >=  !=  ==   %in%
b
# equal to
b[(b == 25)]
# equal to
b[(b == 28)]
# not equal to
b[(b != 25)]
# greater than
b[(b > 25)]
# less than
b[(b < 25)]
# less than or equal to
b[(b <= 25)]
# which values on left are in the vector on right
(c(5, 7, 20, 30, 55) %in% b)