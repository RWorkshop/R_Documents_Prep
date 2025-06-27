# mutate
# any sort of transformation of a variable
iris %>% mutate( var1  = sqrt(Sepal.Length) ) %>% head(5)
iris %>% mutate( var1  = sqrt(Sepal.Length),
   var2 = log(Petal.Length)) %>% head(5)
iris %>% mutate( var1  = sqrt(Sepal.Length),
   var2 = log(Petal.Length),
   var3 = var2/var1 )
iris %>% mutate( var1  = sqrt(Sepal.Length),
   var2 = log(Petal.Length),
   var3 = var2/var1 ) %>% head(5)
 #  var3 = var2/var1 ) %>% select(...)
# iris <- iris %>% select(1:Sepal.Length,var1, everyting())
# mutate
glimpse(mtcars)
mtcars2 <- mtcars
#create a copy of mtcars
# not overwrite the original data set, we will use this later
mtcars2 <- mtcars2 %>% mutate(
head(mtcars2)
glimpse(mtcars)
mtcars2 <- mtcars2 %>% mutate(
  cyl = factor(cyl),
  vs  = factor(vs),
  am = factor(am))
glimpse(mtcars)
glimpse(mtcars2)
mtcars2 <- mtcars2 %>% mutate(
  cyl = factor(cyl),
  am = factor(am))
# factor : important for visualization : ggplot2
# very useful package: forcats
# tidyverts : tidy time series
# forcats : for categorical variables
# two more tidyverse commands
 # dplyr 
mtcars %>% arrange(cyl)
mtcars %>% arrange(cyl) %>% head(10)
mtcars %>% arrange(cyl,mpg) %>% head(10)
mtcars %>% arrange(desc(cyl),mpg) %>% head(10)
mtcars %>% sample_n(5)
mtcars %>% sample_frac(0.05)
mtcars %>% sample_frac(0.25)
mtcars %>% sample_frac(0.125)
library(ggplot2)
# install.packages(c("ggplot2","GGally"))
# Two Tables Verbs 
# ggplot2 : R package for graphics
# midwest
# diamonds
data(midwest)
data(diamonds) 
#
#
# histograms
# violinplots and boxplots
# barcharts
# scatterplots
# factors
# tibble : tidy table 
ggplot(data=diamonds.report, aes(
x = cut,
y = mean.depth,
fill = color)) + geom_bar(stat="identity", position = "dodge")
y = mean.depth,
fill = color)) + geom_bar(stat="identity")
history(100)

