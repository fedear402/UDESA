rm(list=ls())


x1 <- runif(1000, min = 0, max = 200) # x uniforme
x2 <- runif(1000, min = 0, max = 200) # x uniforme
x3 <- runif(1000, min = 0, max = 200) # x uniforme
u <- rnorm(1000,mean=0,sd=1100)  # los errores
y <- (100 + 3 * x1 + 2 * x2 - x3 + u)

lm.fit <- lm(y~x1+x2+x3)
summary(lm.fit)
