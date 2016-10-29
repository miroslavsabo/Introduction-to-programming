# setting working directory
setwd("~/Documents/TOP/Introduction to programming/")

# loading libraries
library(magrittr)
library(ggplot2)
library(dplyr)
library(ggplot2movies)

movies %>% 
  dplyr::tbl_df() %>% 
  dplyr::count(year) %>% 
  ggplot(aes(x = year, y = n)) + 
  geom_bar(stat = "identity")
