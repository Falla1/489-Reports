mydata <- read.csv("Metrics/KComparison.csv")

library(ggplot2)

time <- ggplot(mydata, aes(x=factor(K_Value), Total.Time))

time + geom_boxplot() + ggtitle("Comparison between K Value") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))

comparison <- ggplot(mydata, aes(x=factor(K_Value), Output.Comparisons))

comparison + geom_boxplot() + ggtitle("Comparison between K Value") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))