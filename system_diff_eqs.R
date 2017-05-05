System_odes <- function(t, y, parms)
{
  dydt1 <- parms$r1*y[1]*(parms$k1 - y[1] - parms$a12*y[2])/parms$k1
  dydt2 <- parms$r2*y[2]*(parms$k2 - y[2] - parms$a21*y[1])/parms$k2
  dydt <- c(dydt1, dydt2)
  return( list(dydt))
}
# System of diffeqs
r1 <- 0.1
r2 <- r1
k1 <- 1000
k2 <- k1
a12 <- 0.8
a21 <- 0.7
n1init <- 10
n2init <- 85
times <- seq(0, 400, 0.01)
y <- c(n1init, n2init)
parms <- list(r1, r2, k1, k2, a12, a21)
names(parms) <- c("r1", "r2", "k1", "k2", "a12", "a21")
results <- ode(y = y, times = times, func = System_odes, parms = parms)