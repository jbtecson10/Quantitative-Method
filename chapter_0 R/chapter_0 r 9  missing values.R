#### Missing values ####
NA + 5
2 * NA
mean(c(3, 4, NA))
# many functions have na.rm argument (NA remove)
mean(c(NA, 3, 4), na.rm = TRUE)
sum(c(NA, 3, 4))
sum(c(NA, 3, 4), na.rm = TRUE)
# or you can remove them yourself
d <- c(NA, 1:6, NA)
d
is.na(d)       # which values are missing?
!is.na(d)      # which values are NOT missing?
d[!is.na(d)]   # return those which are NOT missing
d              # note, this did not change the variable d
# To save the results of removing the NAs,
#   assign to another variable or reassign to the original variable
# Warning: if you write over variable d then the original version is gone forever!
d <- d[!is.na(d)]
d