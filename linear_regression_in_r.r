library(ggplot2)
library(dplyr)
args = commandArgs(trailingOnly=TRUE)


readfile <- read.csv(args[1])
print(args[1])


ggplot(readfile, aes(x=x, y=y, color="red")) + geom_point()
ggsave("r_orig.png")
dev.off()



model = lm(x ~ y, readfile)


plot(readfile, col="red")
p1_recorded <- recordPlot()
abline(model, col="blue", lwd=3)
png(filename="r_lm.png")
dev.off()




