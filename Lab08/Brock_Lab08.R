# Problem #2 time-growth model 
# From Lab 7
growth_model <- function(n_init = 100, gen = 100, r = 0.2, K = 20000){
  # Prealllocate abundance vector
  abundance <- rep(n_init, gen)
  # Run the model and plot
  for(i in 2:gen){
    abundance[i] <- abundance[i-1] + (r*abundance[i - 1]*(K - abundance[i - 1])/K)
  }
  plot(1:gen, abundance, xlab = "generations")
  return(abundance)
}

# Implement the function
# Put in initial conditions
generations <- 1:100
n_init <- 200
r <- .15
K <- 15000
abundance <- growth_model(n_init, length(generations), r, K)
# write data to an r file 
data <- cbind(generations, abundance)
setwd("/home/darin/Documents/ComputationalBioLabsandHW/Lab08/")
write.csv(data, file = "growth_model_data.csv")

