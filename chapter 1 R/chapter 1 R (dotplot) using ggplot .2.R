# dotplot using ggplot
library(ggplot2)

# first put hb vector into a data.frame
hb <- c(131, 135, 139, 139, 140, 141, 141, 142, 143, 143, 144, 144, 
        145, 146, 147, 147, 147, 147, 147, 147, 147, 148, 148, 148,
        149, 149, 149, 149, 149, 149, 149, 149, 149, 149, 149, 149,
        149, 149, 149, 150, 150, 150, 151, 151, 151, 151, 151, 151,
        151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151,
        151, 151, 152, 152, 153, 153, 153, 153, 153, 153, 154, 155,
        157, 157, 159, 160)

hb_df <- data.frame(hb)

p1 <- ggplot(hb_df, aes(x = hb))
p1 <- p1 + geom_dotplot(binwidth = 2)
p1 <- p1 + labs(title = "Modern Englishman head breadth")
p1 <- p1 + xlab("head breadth (mm)")

p2 <- ggplot(hb_df, aes(x = hb))
p2 <- p2 + geom_dotplot(binwidth = 2, stackdir = "center")
p2 <- p2 + labs(title = "Modern Englishman head breadth, stackdir=center")
p2 <- p2 + xlab("head breadth (mm)")

p3 <- ggplot(hb_df, aes(x = hb))
p3 <- p3 + geom_dotplot(binwidth = 2, stackdir = "centerwhole")
p3 <- p3 + labs(title = "Modern Englishman head breadth, stackdir=centerwhole")
p3 <- p3 + xlab("head breadth (mm)")

library(gridExtra)
grid.arrange(p1, p2, p3, ncol=1)