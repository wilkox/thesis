#load ggplot2
library(ggplot2)

#the data
d <- data.frame(effect=c("Advection", "Distance", "Environment"), size=c(7, 10, 27), errormin=c(NA, 8, 23), errormax=c(NA, 12, 31))

#the plot
p <- ggplot(d, aes(x=effect, y=size))
p <- p + geom_bar(stat="identity", fill=c("lightgray"))
p <- p + geom_errorbar(aes(ymin=errormin, ymax=errormax), size = 0.3, width = 0.2)
p <- p + theme(panel.grid.major=element_blank(), panel.grid.minor = element_blank(), panel.background=element_blank())
p <- p + theme(panel.border=element_rect(fill=NA))
p <- p + theme(axis.title.x=element_blank())
p <- p + theme(axis.text.x = element_text(color="black"))
p <- p + ylab("Variance explained (%)")
p <- p + scale_fill_brewer(palette = "Set1")

#output to png
ggsave("./biogeographybarchart.png", p, width=5, height=3, dpi=1200)
