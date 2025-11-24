#### Extracting subsets ####
# Specify the indices you want in the square brackets []
b <- seq(0, 50, by = 5)
# blank = include all
b
b[]
# integer +=include, 0=include none, -=exclude
b[3]
b[c(1, 3, 5, 7)]
b[0]
b[-c(1, 3, 5, 7)]
b[c(2, 2, 2, 4, 4, 8)]   # subsets can be bigger than the original set
b[c(1,2)] <- c(100, 200) # update a subset
b