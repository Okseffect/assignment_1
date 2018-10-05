## Exercice 3a

# Sum values in a column of a data frame.
#
# ARGUMENTS:
# d: a data frame or tibble
# var: the name of a column of d, provided as a string
#
# RETURN VALUE:
# if the specified column exists and contains numbers, returns the sum of
# all values in the column; otherwise, returns NULL

sum_column <- function(d, var) {
  result <- 0
  x <- d[[var]]
  if (is.numeric(x)) {
    for (number in x) {
      result <- result + number
    }
    return(result)
  }
  return(NULL)
}

## [1] 876.5
print(sum_column(iris, "Sepal.Length"))
# NULL
print(sum_column(iris, "Species"))
# [1] 1520
print(sum_column(warpbreaks, "breaks")


## Exercice 3-b
# Sum values in a vector.
#
# ARGUMENTS :
# x: a vector
# RETURN VALUE:
# if the vector contains numbers, returns the sum of
# all values; otherwise, returns NULL
my_sum <- function(x) 