### Original income data
income <- c(42, 40, 12, 8, 7, 7, 7, 5, 2, 2, 0)

#### remove largest
# remove two largest values (the first two)
income2 <- income[-c(1,2)]
income2

### Summary of the reduced income data
summary(income2)

### Stem-and-leaf plot
stem(income2)

### Stem-and-leaf plot with scale = 2 (twice as wide)
stem(income2, scale = 2)

#### income-boxplot
# boxplot using R base graphics
# 1 row, 3 columns
par(mfrow = c(1, 3))

boxplot(income, main = "Income")
boxplot(income[-1], main = "(remove largest)")
boxplot(income2, main = "(remove 2 largest)")