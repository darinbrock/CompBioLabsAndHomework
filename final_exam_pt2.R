# Final Exam Part 2, Darin Brock

# Question 9
x <- 5

# Question 10
vec <- rep(23, 5)

# Question 11
vec[4] <- 27.2

# Question 12
final_exam_quest12 <- function(input1, input2)
{
  sum <- input1 + input2
  if(sum < 0)
  {
    return(0)
  }
  else
  {
    return(sum)
  }
}

# Question 13
# Part a
setwd("/home/darin/Documents/CompBioLabsandHw/Final_Exam/")
data <- read.csv("data.csv")
# Part b
sum(data[,2] < 0)
# Part c
row_indices <- which(data[,2] < 0)
# Part d
new_data <- data[row_indices,]


# Question 14
Lokta_volterra <- function(totalGenerations = 1000, initPrey = 100, initPred = 10, a = 0.01, r = 0.2, m = 0.05, k = 0.1)
{
  # Setup the time, n, p vectors
  t <- 1:totalGenerations
  n <- rep(initPrey, totalGenerations)
  p <- rep(initPred, totalGenerations)
  # Do the for loop
  for(i in 2:totalGenerations)
  {
    n[i] <- n[i - 1] + (r*n[i - 1]) - (a*n[i-1] * p[i-1])
    p[i] <- p[i - 1] + (k*a*n[i - 1]*p[i - 1]) - (m*p[i - 1])
    if(n[i] < 0 )
    {
      n[i] <- 0
    }
    if(p[i] < 0)
    {
      p[i] <- 0 
    }
  }
  # Make the figure
  plot(t, n, col = "blue")
  lines(t, p, col = "red")
  
  # Return the data
  results <- list("time" = t, "Prey" = n, "Predator" = p)
}

# Question 15
# Make the model into ode
library("deSolve")
Lokta_diff <- function(t, y, parms)
{
  dydt1 <- y[1] + (parms$r*y[1]) - (parms$a*y[1]*y[2])
  dydt2 <- y[2] + (parms$k*parms$a*y[1]*y[2]) - (parms$m*y[2])
  dydt <- c(dydt1, dydt2)
  return(list(dydt))
}

# Set up parms vector and init vector
initPrey <- 100
initPred <- 10
a <- 0.01
r <- 0.2
m <- 0.05
k <- 0.1
times <- seq(0, 1000, 0.01)
y <- c(initPrey, initPred)
parms <- list(a, r, m, k)
names(parms) <- c("a", "r", "m", "k")
diffeq_results <- ode(y, times, Lokta_diff, parms)
plot(diffeq_results, col = "blue")

# Question 16
# Part a
# I would choose a Poisson distribution for describing the number
# of customers who receive free groceries. Since a Poisson distribution
# gives the probability of a given number of events occuring independent 
# of time and with a known rate. This seems to fit the problem well.

# Part b
lambda <- 1/250
customers <- 3000
winners <- sum(rpois(customers, lambda))

# Part c
# I would choose a normal distribution for describing the number of customers per hour
# at an average of 40/hour. The center of the numerical distribution would be at 40 and 
# fall off to either side. 

# Part d
avg <- 40 # customers/hour
hours <- 10
stdev <- 5 # assuming a standard deviation of 5 people
num_cust <- rnorm(hours, mean = avg, sd = stdev)
total_cust <- sum(num_cust)

# Part e
# Assuming the customer arrivals are all independent of each other the time between
# arrivals should follow an exponential distribution. The exponential distribution 
# describes events that occur continuously and independently at a continuous
# average rate which fits this description.