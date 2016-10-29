# Variables ---------------------------------------------------------------

### primitive types

# integer
i <- 5 

# decimal
f <- -4.12 

# string
s <- "Hello world!" 



### compound types

# vector = sequence of values of the SAME primitive type
v <- c("John", "Marry", "Peter") 

# matrix = table of values of the SAME primitive type
m <- matrix(1:10, ncol = 2) 

# data frame = table whose columns are vectors (i.e. all values in the vector must be of the same primitive type)
df <- data.frame(Name = c("John", "Marry"), Age = c(10, 12)) 



# Functions ---------------------------------------------------------------

age <- c(53, 14, 92)
mean(age)
help(mean)



# Libraries ---------------------------------------------------------------

# Some special functions are nor available automatically. 
# This is because they live in special 'libraries'.
# So, before we use such function, we must first load the library where the function lives.
library(readr) # load library 'readr', so now we can use all its functions (e.g. 'read_delim')



# IO ----------------------------------------------------------------------

# reading data from disk into R
library(readr)
data <- read_delim("~/Documents/TOP/Introduction-to-programming/data/movies.csv", delim = ";")
data