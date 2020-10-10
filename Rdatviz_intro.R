
library(ggplot2)
## https://ggplot2.tidyverse.org/reference/ggplot.html
## Data visualisation with ggplot2 - Chapter 3###

## ggplot is based on the philosophy of grammar of graphics
## the idea is to add layers to visualisation
## layers 1-3 
## layer 1: data , layer 2: aesthetics (data columns to use in plotting), 
## layer 3 : geometries (type of plot)

x <- mpg

#### scatterplot ###
## First steps - ##
## Aesthetic mappings (data columns to use in plotting) ##
p1 <- ggplot(data=mtcars, aes(x=mpg, y=hp))

## Geometric objects (type of plot) ##
p1 + geom_point()

##install.packages("ggplot2movies")
library(ggplot2movies)
y <- movies
head(movies)
colnames(movies)

#### histogram ###

## data and aesthetics##
p <- ggplot(movies, aes(x=rating))

#geometry
## Histograms
print(p + geom_histogram())


## Barplots - counts for categorical data ##
x <- mtcars
head(mtcars)
colnames(mtcars)
str(mtcars)
## data and aesthetics
p <- ggplot(mtcars,aes(x=cyl))
# geometry 
# barplot - categorical data, bars separated by spaces
p + geom_bar(fill='blue')
