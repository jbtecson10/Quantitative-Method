### Exact income data (matches your image exactly)
income <- c(1100, 45, 12, 8, 7, 7, 7, 5, 2, 2, 0)

### Remove values
income1 <- income[-1]         # remove largest (1100)
income2 <- income[-c(1,2)]    # remove 2 largest (1100, 45)

### Make boxplots in 1 row, 3 columns
par(mfrow = c(1, 3))

boxplot(income, main = "Income")
boxplot(income1, main = "(remove largest)")
boxplot(income2, main = "(remove 2 largest)")