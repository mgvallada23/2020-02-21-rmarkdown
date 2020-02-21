k_c <- function(k_temp) {
  return(k_temp - 273.15)
}

f_k <- function(f_temp) {
  converted <- ((f_temp - 32)) * (5/9) + 273.15
  return(converted)
}

f_c <- function(f_temp) {
  k_temp <- f_k(f_temp)
  temp_c <- k_c(k_temp)
  return(temp_c)
}

k_c <- function(k_temp) {
  if(k_temp < 0) {
    warning("You passed in a negative kelvin number")
    return(NA)
  }
  return(k_temp - 273.15)
}

k_c(-100)

k_c <- function(k_temp) {
  if(k_temp < 0) {
    warning("You passed in a negative kelvin number")
    return(NA)
  }
  return(k_temp - 273.15)
}

k_c <- function(k_temp) {
  if (is.na(k_temp)) {
    return(NA)
  } else if (k_temp < 0) {
    warning("You passed in a negative kelvin number")
    return(NA)
  } else {
    return(k_temp - 273.15)
  }
}

k_c(1:10)

if (all(c(TRUE, TRUE, TRUE, FALSE))) {
  print("hello")
}

c(TRUE, FALSE) == c(TRUE, FALSE)
identical(c(TRUE, FALSE), c(TRUE, FALSE))
identical(0,0L)

# & |
# && ||
c(TRUE, FALSE) && c(TRUE, FALSE)
c(TRUE, FALSE) || c(TRUE, FALSE)

# Write a function, fizzbuzz
# takes a single value
# divisable 3 : "fizz"
# divisable 5 : "buzz"
# divisable 3 AND 5: "fizzbuzz"
# otherwise NA
# %%

fizzbuzz <- function(x) {
  if ((x %% 3) == 0 ) {
    return("fizz")
  } else if ((x %% 5) == 0) {
    return("buzz")
  } else if ((x %% 3) == 0 & (x %% 5) == 0) {
    return("fizzbuzz")
  } else {
    return(NA)
  }
}

fizzbuzz <- function(x) {
  if ((x %% 3) == 0 & (x %% 5) == 0) {
    return("fizzbuzz")
  } else if ((x %% 3) == 0) {
    return("fizz")
  } else if ((x %% 5) == 0) {
    return("buzz")
  } else {
    return(as.character(x))
  }
}

fizzbuzz(6)
fizzbuzz(15) 

fizzbuzz_vec <- function(x) {
  dplyr::case_when(
    (x %% 3) == 0 & (x %% 5) == 0 ~ "fizzbuzz",
    (x %% 3) == 0 ~ "fizz",
    (x %% 5) == 0 ~ "buzz",
  TRUE ~ as.character(x)
  )
}

fizzbuzz_vec(9)
fizzbuzz_vec(15)

calc_op <- function(x, y, op) {
  switch(op,
         plus = x + y,
         minus = x - y,
         times = x * y,
         divide = x / y,
         stop("Unknown op!")
         )
}

calc_op(10, 100, "divide")

describe_temp <- function(temp) {
  if (temp <= 0) {
    "freezing"
  } else if (temp <= 10) {
    "cold"
  } else if (temp <= 20) {
    "cool"
  } else if (temp <= 30) {
    "warm"
  } else {
    "hot"
  }
}

values <- 10
cut(values,
    c(-Inf, 0, 10, 20, 39, Inf),
    labels = c("freezing","cold","cool","warm","hot"),
    right = TRUE)
