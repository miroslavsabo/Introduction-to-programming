# setting working directory
setwd("~/Documents/TOP/Introduction to programming/")

# loading necessary libraries
library(readr)
library(sqldf)
library(dplyr)

# loading data from disk into R
data <- read_delim("data/movies.csv", delim = ";")

# writing SQL queries
tbl_df(sqldf(
  "
SELECT * from data
  "
  ))



# Trash -------------------------------------------------------------------

movies %>% write.table("data/movies.csv", row.names = FALSE, sep = ";", na = "")


