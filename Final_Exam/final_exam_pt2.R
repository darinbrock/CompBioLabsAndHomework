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




