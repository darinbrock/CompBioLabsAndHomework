# Part 1
# Problem 1
# Assign x
x <- 27
# Check if x is larger than five and print the message
if(x > 5){
  print("x is larger than five")
} else {
  print("x is not larger than five")
}

# Problem 2
# 2a
# Read the data into a frame called data1
data1 <- read.csv('/home/darin/compBioSandbox/CompBio_on_git/Labs/Lab05/Vector1.csv')
data1 <- as.vector(data1$x)
# Process the data by setting negative vaules to NA
for(i in 1:length(data1)){
  if (data1[i] < 0){
    data1[i] <- NA
  }
}

# 2b
# Set values of NA to 0
data1[which(is.na(data1))] <- 0
# 2c
# create a vector of indices of values greater than 50 and less than 100
newvector<- data1[which((data1 > 50) & (data1 < 100))]
# Part 3
# 3a
# Create a dataframe named data2 by reading in data.
data2 <- read.csv('/home/darin/compBioSandbox/CompBio_on_git/Labs/Lab04/CO2_data_cut_paste.csv')
# Create a vector of indices where the data is greater than 0
gas_indices <- which(data2[,"Gas"] > 0)
data2[gas_indices[1], "Year"]
# 3b
# create a vector of indices where the value is greater than 200 but less than 300
total_indices <- which((data2[,"Total"]>200)&(data2[,"Total"]<300))
years_between_200_300 <- data2[total_indices, "Year"]

# Part 2
# Set up parameter values
totalGenerations <- 1000
initPrey <- 100 # initial prey abundance
initPred <- 10 # initial predator abundance
a <- 0.01 # attack rate
r <- 0.2 # growth rate of prey
m <- 0.05 # mortality rate of predators
k <- 0.1 # conversion constant of prey into predators

# Initialize vectors
time <- 1:totalGenerations
n <- rep(initPrey,length(time))
p <- rep(initPred, length(time))

# Set up for loop for calculations
for(i in 2:length(time)){
  n[i] <- n[i-1] + (r*n[i-1]) - (a*n[i-1]*p[i-1])
  p[i] <- p[i-1] + (k*a*n[i-1]*p[i-1]) - (m*p[i-1])
  # Check each loop to see if populations are negative
  if(n[i] < 0){
    n[i] <- 0
  }
  if(p[i] < 0 ){
    p[i] <- 0
  }
}
plot(time, n)
lines(time, p)

