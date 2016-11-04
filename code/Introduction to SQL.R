# Setup -------------------------------------------------------------------

# setting working directory
setwd("~/Documents/TOP/GIT/Introduction-to-programming/")

# loading necessary libraries
library(readr)
library(sqldf)
library(dplyr)

# loading data from disk into R
data <- read_delim("data/movies.csv", delim = ";")



# Writing SQL queries -----------------------------------------------------

# getting all data
tbl_df(sqldf( "
SELECT *
FROM data
  " ))

# filtering columns
tbl_df(sqldf( "
SELECT title, rating 
FROM data
  " ))

# filtering rows
tbl_df(sqldf( "
SELECT *
FROM data
WHERE round(rating, 0) = 10
  " ))

# summarising columns
tbl_df(sqldf( "
SELECT avg(rating), avg(length)
FROM data
  " ))

# grouping data and getting per group summaries
rating_by_year <- tbl_df(sqldf( "
SELECT year, avg(rating)
FROM data
GROUP BY year
  " ))

# combining multiple things in one query
tbl_df(sqldf( "
SELECT year, avg(rating)
FROM data
WHERE year >= 2000
GROUP BY year
  " ))

# adding columns
...

# quering two tables
...



# Trash -------------------------------------------------------------------

write.table(rating_by_year, "data/rating_by_year.csv", row.names = FALSE, sep = ";", na = "")

rating_by_year %>% 
  ggplot(aes(x = year, y = `avg(rating)`, colour = "red")) + 
  geom_point() + geom_line()

