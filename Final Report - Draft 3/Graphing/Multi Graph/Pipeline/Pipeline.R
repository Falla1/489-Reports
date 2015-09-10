mydata <- read.csv("Multi Graph/Pipeline/Pipeline.csv")

library(ggplot2)

time <- ggplot(mydata, aes(x=factor(Pipeline_Value), Total.Time))

time + geom_boxplot(aes(fill = factor(BenchMark))) + ggtitle("Comparison between\n two sizes of pipelines \n in relation to total time") + 
     theme(plot.title = element_text(lineheight=.8, face="bold")) +
     xlab("Size of pipeline") + ylab("Total Time Taken")
     
     

ggplot(data=mydata, aes(x=Pipeline_Value, y=Output.Comparisons, group=BenchMark, shape=BenchMark, colour=BenchMark)) + 
    geom_line(aes(linetype=BenchMark), size=1) +     # Set linetype by sex
    geom_point(size=3, fill="white") +         # Use larger points, fill with white
    expand_limits(y=0) +                       # Set y range to include 0
    scale_colour_hue(name="BenchMark",      # Set legend title
                     l=30)  +                  # Use darker colors (lightness=30)
    scale_shape_manual(name="BenchMark",
                       values=c("#CC0000", "#006600", "#669999", "#00CCCC", 
                             "#660099", "#CC0066", "#FF9999", "#FF9900", 
                             "black", "black", "black", "black", "black")) +      # Use points with a fill color
    scale_linetype_discrete(name="BenchMark") +
    xlab("Number of pipelines") + ylab("Number of redundant tests") + # Set axis labels
    ggtitle("Comparison between\n two sizes of pipelines \n in relation to Redundant Tests Identified") +     # Set title
    theme_bw() +       # Position legend inside
    scale_y_log10()                      
