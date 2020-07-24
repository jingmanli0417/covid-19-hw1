library(tidyverse)
library(sandwich)
library(ggplot2)
df = data.frame(close = GSPC$Close,positive=usdata$positive,positiveinc=usdata$positiveIncrease,death=usdata$death)
#correlation between s&p 500 and cumulative cases
cor(df$close, df$positive, use = "complete.obs", method = "pearson")
ggplot(df, aes(x= close, y = positive)) + geom_point()
#correlation between s&p 500 and new cases
cor(df$close, df$positiveinc, use = "complete.obs", method = "pearson")
ggplot(df, aes(x= close, y = positiveinc)) + geom_point()
#correlation between s&p 500 and total death
cor(df$close, df$death, use = "complete.obs", method = "pearson")
ggplot(df, aes(x= close, y = death)) + geom_point()
