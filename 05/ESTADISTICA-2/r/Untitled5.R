t1 <- c(3.03, 5.53, 5.60, 9.30, 9.92, 12.51, 12.95, 15.21, 16.04, 16.84)
t2 <- c(3.19, 4.26, 4.47, 4.53, 4.67, 4.69, 12.78, 6.79, 9.37, 12.75)
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
st1 = sample_variance(t1)
st2 = sample_variance(t2)
st1
st2
pooled_variance(t1, t2)


####wilcoxon

rangos_men_sum <- function(x, y) {
  j <- sort(c(x, x))
  if (length(x)<length(y) | length(x)==length(y)){
    menor <- x
  } else if (length(x)>length(y)) {
    menor <- y
  } 
  j <- sort(c(x, y))
  s = 0
  for (i in 1:length(j)) {
    if (j[i] %in% menor){
      s = s + i
    }
  }
  return(s)
}
rangos_men_sum(t1, t2)
