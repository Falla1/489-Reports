mydata <- read.csv("Whiley/PipelineComparison.csv")

library(ggplot2)

time <- ggplot(mydata, aes(x=factor(Pipeline_Value), Total.Time))

time + geom_boxplot() + ggtitle("Comparison between Pipeline Length") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))
     
comparison <- ggplot(mydata, aes(x=factor(Pipeline_Value), Output.Comparisons))

comparison + geom_boxplot() + ggtitle("Comparison between Pipeline Length") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))


