defunc <- function(t, y, params)
{
  dydt <- y*params$r*((params$k - y)/params$k)
  return(list(dydt))
}

# Set up time, parameters  
t <- seq(0, 25, 0.01)
r <- 2.8
k <- 1000
n0 <- 10

params <- list(r, k)
names(params) <- c("r", "k")
solution <- ode(n0, t, defunc, params)