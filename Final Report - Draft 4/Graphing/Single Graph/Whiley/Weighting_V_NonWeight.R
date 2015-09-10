mydata <- read.csv("Whiley/WeightingComparison.csv")

library(ggplot2)

time <- ggplot(mydata, aes(x=factor(Weighting), Total.Time))

time + geom_boxplot() + ggtitle("Comparison between Weighting vs Non Weighting") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))

comparison <- ggplot(mydata, aes(x=factor(Weighting), Output.Comparisons))

comparison + geom_boxplot() + ggtitle("Comparison between Weighting vs Non Weighting") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))