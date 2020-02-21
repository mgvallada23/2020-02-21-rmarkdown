f_k <- function(f_temp) {
  (f_temp - 32)*(5/9)+273.15 
              return(converted))
} 

f_c <- function(f_temp) {
  k_temp <- f_k(f_temp)
  temp_c <- k_c(k_temp)
  return(temp_c)
}

library()

#function 2 vectors
#vector, x, values
#vector, w, weights
#sum(x*w ) / sum(w)
#f(1:6, 1:6)

mean_wt <- function(x, w) {
  return(sum(x * w) / sum(w))
}
mean_wt(1:6, 1:6)

mean_wt <- function(x, w) {
  if(length(x) != length(w)) {
    stop("x and w should be the same length")
  }
  return(sum(x * w) / sum(w))
}

testthat::expect_error(mean_wt(1:6, 1:3))

sum_3 <- function(x, y, z) {
  return(x+ y + z)
}
