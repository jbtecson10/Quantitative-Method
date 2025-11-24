#### Review ####

# assignment
b <- seq(0, 50, by = 5)

# arithmetic
5 + 3 - 2 * 4 / 2 ^ 2

# combine
c(1, 2, 3)

# sequence
seq(1, 20, by = 2)
seq(0, 100, length = 5)

# functions
sum(b)
prod(b)
mean(b)
sd(b)
var(b)
min(b)
median(b)
max(b)
range(b)

# subsetting
b[]
b[3]

# comparison
(b > 10)
b == 25
b != 25
b > 25
b < 25
b >= 25
b <= 25
5 %in% b

# boolean
(b > 10) & (b < 40)
(b < 10) | (b > 40)
!(b > 25)

# missing values
NA
mean(c(NA, 1, 2), na.rm = TRUE)
!is.na(c(NA, 1, 2))
