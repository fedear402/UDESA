a <- c(1.0, 22.6, 38.5, 11.9, 20.7, 13.7, -7.9, 48.2, 33.2, 27.4, 27.7, 24.0, 54.4, 24.8, 60.4, 13.5, 33.1, 33.3, -7.8, 27.5, -18.1, 27.1, 17.1)
b <- c(-12.8, 30.2, 6.5, -8.2, -3.0, 28.0, 27.9, 22.1, 33.5, 31.4, 24.8, 9.9, -21.9, 17.8, 45.4, 13.5, 13.6, 23.8, 48.7, 9.1, 2.6, 19.8)
n = length(a)
m=length(b)


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
sa = sample_variance(a)
sb = sample_variance(b)
print(sa)
print(sb)

sp = pooled_variance(a,b)
print(sp)

Estadistico_H0 = (16.48636-22.88261)/sqrt(344.2525*(1/22+1/23))

p.valor = pt(Estadistico_H0, df=n+m-1) + (1 - pt(-Estadistico_H0, df=n+m-1))
print(p.valor)

t.test(a,b)

a <- c(1.0, 22.6, 38.5, 11.9, 20.7, 13.7, -7.9, 48.2, 33.2, 27.4, 27.7, 24.0, 54.4, 24.8, 60.4, 13.5, 33.1, 33.3, -7.8, 27.5, -18.1, 27.1, 17.1)

# Plot Histogram
hist(a, main = "Histogram of a", xlab = "Values of a", col = "blue")

# Generate QQ-Plot
qqnorm(a, main = "QQ-Plot of a")
qqline(a, col = "red")
shapiro.test(a)

## PUNTO B - INTERVALO DE CONGIANZA NIVEL 95%
b.intervaloConfianza = c( (-qt(1-0.05/2, df=n+m-1)* 5.533113)-6.39625, (-qt(0.05/2, df=n+m-1)* 5.533113)-6.39625)
print( b.intervaloConfianza )
