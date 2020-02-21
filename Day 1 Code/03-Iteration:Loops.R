f_values <- c(0, 32, 212, -40)

f_values * 10

f_values * c(10, 100)

f_k <- function(f_temp) {
  converted <- ((f_temp - 32)) * (5/9) + 273.15
  return(converted)
}

for (x in f_values) {
  print(x * 10)
}

for (pizza in f_values) {
  print(f_k(pizza))
}

library(purrr)

purrr::map(f_values, f_k)

converted <- purrr::map(f_values, f_k)
class(converted)

purrr::map_dbl(f_values, f_k)

mtcars[["mpg"]]

purrr::map(mtcars, class)

purrr::map(mtcars, summary)

library(tidyverse)

mtcars %>%
  mutate(mpg = as.numeric(mpg))

#apply, lapply, sapply, vapply

lapply(mtcars, f_c)

purrr::map_dbl(mtcars, mean)
sapply(mtcars, mean)
vapply(mtcars, mean, numeric(1))



# Comnpute the mean of every column in mtcars
purrr::map_dbl(mtcars, mean)

# Determine the type of each column in nyclfights13::flights
library(nycflights13)

purrr::map(flights, class)

# Compute the number of unique values in each column of iris.
#(Hint: May want to write a function)
iris

num_unique <- function(x) {
  return(length(unique(x)))
}

purrr::map_dbl(iris,num_unique)

purrr::map_dbl(iris, function(x){length(unique(x))})

purrr::map_dbl(iris, ~ length(unique(.)))

# Generate 10 random normals from distribution with means of -10, 0, 10, 100

purrr::map(c(-10,0,10,100), ~ rnorm(n = 10, mean = .))

purrr::map(c(-10,0,10,100), function(x){rnorm(n = 10, mean = x)})

safe_log <- safely(log)

log(10)

safe_log(10)

x <- list(1, 10, "a")

y <- x %>% map(safe_log)

y

flipped_results <- y %>% transpose()
flipped_results$result

mu <- list(5, 10, -3)

map(mu, rnorm, n = 5)

sigma <- list(1, 5, 10)

map2(mu, sigma, rnorm, n = 5)

n <- list(1, 3, 5)

args <- list(mean = mu, sd = sigma, n = n)
pmap(args, rnorm)


