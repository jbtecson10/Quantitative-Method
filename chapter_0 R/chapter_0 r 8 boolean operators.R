#### Boolean ####
# & and, | or, ! not
b <- seq(0, 50, by = 5)
b
# values >= 20 AND <= 40
b[(b >= 20) & (b <= 40)]
# values < 20 OR > 45
b[(b < 20) | (b > 45)]
# values < 20 OR NOT > 45
b[(b < 20) | !(b > 45)]
# values >= 20 AND NOT <= 40
b[(b >= 20) & !(b <= 40)]