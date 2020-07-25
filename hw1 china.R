library(tidyverse)
library(sandwich)
library(ggplot2)
df = data.frame(close = SSE$Close,cum=chinadata$chinaconfirmed,new=chinadata$chinanew,death=chinadata$chinadeaths)
#correlation between SSE and China cumulative cases
cor(df$close, df$cum, use = "complete.obs", method = "pearson")
ggplot(df, aes(x= close, y = cum)) + geom_point()
#correlation between SSE and China new cases
cor(df$close, df$new, use = "complete.obs", method = "pearson")
ggplot(df, aes(x= close, y = new)) + geom_point()
#correlation between SSE and China total death
cor(df$close, df$death, use = "complete.obs", method = "pearson")
ggplot(df, aes(x= close, y = death)) + geom_point()
