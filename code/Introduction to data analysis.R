# Setup -------------------------------------------------------------------

# setting working directory
setwd("~/Documents/TOP/GIT/Introduction-to-programming/")

# loading libraries
library(sqldf)
library(ggplot2)
library(readr)

# reading data from disk
movies <- read_delim("data/movies.csv", delim = ";")
students <- read_delim("data/students2013.csv", delim = ";")
titanic <- read_delim("data/titanic.csv", delim = ";")



# aggregating data --------------------------------------------------------

movies_agg <- sqldf("
SELECT year, count(year) AS n
FROM movies
GROUP BY year
")



# plotting data -----------------------------------------------------------

g <- ggplot(movies_agg, aes(x = year, y = n)) + geom_bar(stat = "identity")
print(g)

# saving plot to disk
ggsave(g, file="results/movies by year.pdf", width = 10)



# Advanced analytics ------------------------------------------------------

# Create the tree.
library(rpart)
output.tree <- rpart(Survived ~ Age + Sex + PClass, data = titanic)

# Plot the tree.
plot(output.tree)
text(output.tree, use.n = TRUE)



# advanced plotting -----------------------------------------------



# Trash -------------------------------------------------------------------


ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, colour = Species)) + 
  geom_point() + 
  stat_smooth() + 
  facet_wrap(~Species)

students %>% 
  ggplot(aes(x = Height, y = Weight, colour = Gender)) + 
  geom_point() + 
  stat_smooth(method = "lm") + 
  facet_wrap(~Gender, ncol = 1)
