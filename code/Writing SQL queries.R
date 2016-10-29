# Setup -------------------------------------------------------------------

# setting working directory
setwd("~/Documents/TOP/Introduction to programming/")

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
SELECT title, rating from data
  " ))

# filtering rows
tbl_df(sqldf( "
SELECT *
FROM data
WHERE rating > 9.9
  " ))

# summarising columns
tbl_df(sqldf( "
SELECT avg(rating)
FROM data
  " ))

# grouping data and getting per group summaries
tbl_df(sqldf( "
SELECT year, count(year)
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



# Trash -------------------------------------------------------------------

movies %>% write.table("data/movies.csv", row.names = FALSE, sep = ";", na = "")


