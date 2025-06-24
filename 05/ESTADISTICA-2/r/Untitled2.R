a <- c(0.51, 3.92, 6.33, 3.10, -0.40, -3.23, 2.11, -2.31, -2.84, 0.69, 3.37, 0.70, 0.99)
mean(a)

b<-c(2.15, 0.37, -1.37, -4.28, 5.25, -3.45, 5.63, 6.16, -0.74, -0.21, -0.12, 4.82,
     7.59, 3.10, -0.58, 6.08)
mean(b)
sample_variance <- function(x) {
  n <- length(x)
  mean_x <- mean(x)
  s = 0
  for (i in x){
    s = s + (i - mean_x)^2
  }
  variance <- s / (n - 1)
  return(variance)
}

pooled_variance <- function(x, y) {
  na <- length(x)
  nb <- length(y)
  sa <- sample_variance(x)
  sb <- sample_variance(y)
  pooled <- ((na-1)*sa + (nb-1)*sb )/ ((na) + nb - 2)
  return(pooled)
}
a <-data.frame