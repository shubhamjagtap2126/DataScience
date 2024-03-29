
# documentation of datasets
library(help="datasets")

#How to use base R datasets
?data
data() # list all data sets
data(mtcars) # load a data set
help(mtcars) # learn about the data set
head(mtcars) # lines from start of data set

# use datasets to demonstrate and play with functions
plot(mtcars$hp,mtcars$mpg)

# built-in constants
LETTERS
letters
month.abb
month.name
pi
