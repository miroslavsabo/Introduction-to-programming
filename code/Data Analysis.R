# Setup -------------------------------------------------------------------

# setting working directory
setwd("~/Documents/TOP/Introduction-to-programming/")

# loading libraries
library(sqldf)
library(ggplot2)
library(readr)

# reading data from disk
movies <- read_delim("data/movies.csv", delim = ";")
students <- read_delim("data/students2013.csv", delim = ";")



# aggregating data --------------------------------------------------------

movies_agg <- sqldf("
SELECT year, count(year) AS n
FROM movies
GROUP BY year
")



# plotting data -----------------------------------------------------------

g <- ggplot(movies_agg, aes(x = year, y = n)) + geom_bar(stat = "identity")
g

# saving plot to disk
ggsave(g, file="results/movies by year.pdf", width = 10)



# more complicated plotting -----------------------------------------------

students
