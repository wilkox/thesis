#library
library(ggplot2)

#values
df <- data.frame(fraction = factor(c("0.1 µm", "0.1 µm", "0.8 µm", "0.8 µm", "3.0 µm", "3.0 µm")),
                levels = c("0.1 µm", "0.8 µm", "3.0 µm"),
                OTU = factor(c("OTU 1", "OTU 2", "OTU 1", "OTU 2", "OTU 1", "OTU 2")),
                abundance = c(1, 49, 3, 71, 8, 2)
                )

#plot
p <- ggplot(data=df, aes(x=fraction, y=abundance, fill=OTU))
p <- p + geom_bar(stat="identity")
p <- p + theme(panel.grid.major=element_blank(), panel.grid.minor = element_blank(), panel.background=element_blank())
p <- p + theme(panel.border=element_rect(fill=NA))
p <- p + theme(axis.title.x=element_blank())
p <- p + theme(axis.text.x = element_text(color="black"))
p <- p + theme(axis.ticks.x = element_blank())
p <- p + ylab("Number of cells (million)")
p <- p + xlab("Size fraction")
p <- p + theme(legend.position="none")

#output
ggsave("fractionabundances1.png", p, width=3, height=3, dpi=1200)

#values
df <- data.frame(fraction = factor(c("0.1 µm", "0.1 µm", "0.8 µm", "0.8 µm", "3.0 µm", "3.0 µm")),
                levels = c("0.1 µm", "0.8 µm", "3.0 µm"),
                OTU = factor(c("OTU 1", "OTU 2", "OTU 1", "OTU 2", "OTU 1", "OTU 2")),
                abundance = c(2, 98, 4, 96, 80, 20)
                )

#plot
p <- ggplot(data=df, aes(x=fraction, y=abundance, fill=OTU))
p <- p + geom_bar(stat="identity")
p <- p + theme(panel.grid.major=element_blank(), panel.grid.minor = element_blank(), panel.background=element_blank())
p <- p + theme(panel.border=element_rect(fill=NA))
p <- p + theme(axis.title.x=element_blank())
p <- p + theme(axis.text.x = element_text(color="black"))
p <- p + theme(axis.ticks.x = element_blank())
p <- p + ylab("Relative abundance (%)")
p <- p + xlab("Size fraction")
p <- p + theme(legend.position="none")

#output
ggsave("fractionabundances2.png", p, width=3, height=3, dpi=1200)

#values
df <- data.frame(OTU = factor(c("OTU 1", "OTU 2")), abundance = c((2+15+80)/3, (300-2-15-80)/3), sample=factor(c("Summed", "Summed")), levels=c("Summed"))

#plot
p <- ggplot(data=df, aes(y=abundance, fill=OTU, x=sample))
p <- p + geom_bar(stat="identity")
p <- p + theme(panel.grid.major=element_blank(), panel.grid.minor = element_blank(), panel.background=element_blank())
p <- p + theme(panel.border=element_rect(fill=NA))
p <- p + theme(axis.title.x=element_blank())
p <- p + theme(axis.text.x = element_text(color="black"))
p <- p + theme(axis.ticks.x = element_blank())
p <- p + ylab("Relative abundance (%)")
p <- p + theme(legend.position="none")

#output
ggsave("fractionabundances3.png", p, width=1.7, height=3, dpi=1200)
