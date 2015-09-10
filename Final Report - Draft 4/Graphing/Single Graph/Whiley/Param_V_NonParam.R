mydata <- read.csv("Whiley/ParameterComparison.csv")

library(ggplot2)

time <- ggplot(mydata, aes(x=factor(Parameter), Total.Time))

time + geom_boxplot() + ggtitle("Comparison between Parameters and No Parameters") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))
     
comparisons <- ggplot(mydata, aes(x=factor(Parameter), Output.Comparisons))

comparisons + geom_boxplot() + ggtitle("Comparison between Parameters and No Parameters") + 
     theme(plot.title = element_text(lineheight=.8, face="bold"))

