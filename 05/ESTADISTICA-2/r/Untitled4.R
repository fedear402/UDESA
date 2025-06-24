liso <- c(25, 28, 16, 34, 38, 21, 29, 43, 32, 36)
estampado <- c(25, 28, 16, 34, 38, 21, 29, 43, 32, 36)

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
rangos_men_sum(liso, estampado)
