mydata <- read.csv("Weighting&ParameterComparison.csv")

library(ggplot2)

time <- ggplot(mydata, aes(x=factor(Weight.And.Parameters), Total.Time))

time + geom_boxplot() + ggtitle("Comparison between Weighting & Parameters vs Neither") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))

comparison <- ggplot(mydata, aes(x=factor(Weight.And.Parameters), Output.Comparisons))

comparison + geom_boxplot() + ggtitle("Comparison between Weighting & Parameters vs Neither") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))