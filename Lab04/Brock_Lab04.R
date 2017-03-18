# Part 1
# Problem 1
# Set up for loop to print hi 10 times on 10 different lines
for(i in 1:10){
  print("hi")
}
# Problem 2
# Set up parameters
Tim_money <- 10
allowance <- 5
gum_cost <- 1.34
# do a for loop to do the calculations and print for each week
for(i in 1:8){
  Tim_money <- Tim_money + allowance - 2*gum_cost
  print(Tim_money)
}
# Problem 3
# Set up parameters
generations <- 7
pop_size <- rep(2000, generations)
print(pop_size[1])
# For loop to calculate new population size and print it
for(i in 2:generations){
  pop_size[i] <- pop_size[i-1] - 0.05*pop_size[i-1]
  print(pop_size[i])
}
# Problem 4
# Set up original parameters
K <- 10000
r <- 0.8
gen2 <- 12
n <- rep(2500, gen2)
print(n[1])
# For loop with the population calculations
for(i in 2:gen2) {
  n[i] <- n[i-1] + (r*n[i-1]*(K - n[i-1])/K)
  print(n[i])
}
# Part 2
# Problem 1
# 1a
# Set up empty vector
f <- rep(0,18)
# 1b
# Fill in vector with a for loop
for( i in seq(1,18)) {
  f[i] <- 3*i
}
# Set up empty vector and fill in first term
# 1c
g <- rep(0,18)
g[1] <- 1
# 1d
# Fill in the rest of the vector
for(i in 2:length(g)){
  g[i] <- 1 + 2*g[i-1]
}
# Problem 2
# Set up an empty vector with 1 as the term
h <- rep(1,20)
# Fill in the rest of the fibonacci sequence
for( i in 3:20){
  h[i] <- h[i-1] + h[i-2]
}
# Problem 3
# data is stored in the vector n.
# Set up all the parameters
time <- 1:12
abundance <- n
plot(time, abundance)
# Problem 4
# 4a
# Read in data
setwd("~/Documents/CompBioLabsAndHomework/Lab04")
data <- read.csv("CO2_data_cut_paste.csv")
# 4b
# Set up new data frame
calcs <- data
# Set the first row to 0 in the new data frame since there is no way change to the first year of data
calcs[1,2:ncol(data)] <- 0
# Do the calculations for the % change in the data
for(i in 2:nrow(data)) {
  for(j in 2:ncol(data)) {
    calcs[i,j] <- abs(data[i,j] - data[i-1,j])/data[i-1,j]*100
  }
}
# write the results to the data file YearlyPercentChangesInCO2.csv
write.csv(x = calcs, file = "YearlyPercentChangesInCO2.csv")
