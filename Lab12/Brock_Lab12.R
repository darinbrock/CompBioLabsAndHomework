# Darin Brock Lab 12
# EBIO 4420
# Computational Biology
# 4/14/17

# Problem 1: develop stochastic model
# Reset plot frame
stoch_model <- function(r = 0.1, k = 100, gens = 100, n_init = 10){
  n <- rep(n_init, gens)
  lambda <- rep(0, gens)
  for(i in 2:gens){
    lambda[i] <- n[i-1] + r*n[i-1]*(k - n[i-1])/k
    n[i] <- rpois(1, lambda[i])
  }
  return(n)
}
# Run the stoch model
n <- stoch_model()

# Problem 2: plotting
# Set up gen vector to plot
gens = 1:100
# Plot
plot(gens, n)
lines(gens, n)

# Problem 3
r <- 0.1
k <- 100
# find the lambda value for n[1] to n[2]
lambda <- n[1] + r*n[1]*(k - n[1])/k
# Probability that the population size doesn't change from n[1] to n[2]
same_prob <- dpois(10, lambda)
# Probability that the population size decreases from n[1] to n[2]
dec_prob <- ppois(9, lambda)
# Probability that the population increases from n[1] to n[2]
inc_prob <- ppois(10, lambda, lower.tail = FALSE)
# Probability that n[2] is between 12 and 25
diff_prob <- ppois(25, lambda) - ppois(12, lambda)
# Probability that population goes extinct at gen 2
extinct_prob <- dpois(0, lambda)

# Problem 4

# I would expect that in the long run the population would normalize to the capacity of 100

# Problem 5
get_stoch_data <- function(runs = 1000, r = 0.1, k = 100, gens = 100, n_init = 10){
  # Preallocate a matrix to hold the data
  stoch_data <- matrix(data = n_init, nrow = gens, ncol = runs)
# Use for loop to get the data
  for(i in 1:runs){
    # Run the stoch model
    stoch_data[,i] <- stoch_model()
  }
  return(stoch_data)
}

# Problem 6
# run the model (1000 runs is the default)
stoch_data <- get_stoch_data()
# Data is formated with runs increasing in columns and data down each row

# Problem 7
# Calculating and plotting means
means <- rep(NA, nrow(stoch_data))
for(i in 1:nrow(stoch_data)){
  means[i] <- mean(stoch_data[i,])
}
plot(gens, means)

