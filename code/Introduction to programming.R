# Variables ---------------------------------------------------------------

### variable, assignment, printing
s <- "Hello World!" # string "Hello World!" is assigned to variable 's'
print(s) # printing what's inside s
s # alternative printing



### primitive types

# integer
i <- 5 

# decimal, double, float
f <- -4.12 

# string
s <- "Hello world!" 

# other
#date, datetime, factor, ...



### compound types

# vector = sequence of values of the SAME primitive type
v <- c("John", "Marry", "Peter") 

# matrix = table of values of the SAME primitive type
m <- matrix(1:10, ncol = 2) 

# data frame = table whose columns are vectors (i.e. all values in the vector must be of the same primitive type)
df <- data.frame(Name = c("John", "Marry"), Age = c(10, 12)) 



# Functions ---------------------------------------------------------------

age <- c(53, 14, 3) # getting some data
mean(age) # calculating mean of all data with the 'mean' function
help(mean) # getting more info about the function



# Libraries ---------------------------------------------------------------

# Some special functions are nor available automatically. 
# This is because they live in special 'libraries'.
# So, before we use such function, we must first load the library where the function lives.
library(ggplot2) # load library 'readr', so now we can use all its functions (e.g. 'read_delim')



# Input/Output (IO) ----------------------------------------------------------------------

# reading data from disk into R
library(readr)
data <- read_delim("~/Documents/TOP/GIT/Introduction-to-programming/data/movies.csv", delim = ";")
data

# exporting data from R to disk
write.table(data, "trash/data_from_r.csv", row.names = FALSE, sep = ";", na = "")



# Looping -----------------------------------------------------------------

for (x in c(1, 2, 3, 10)) {
  print(x / 10)
}
