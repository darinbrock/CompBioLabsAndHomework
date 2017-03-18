# Computational Biology Lab 07
# Darin Brock
# 3/3/17

# Problem #1 Fibonacci sequence
fibonacci <- function(n = 3, k = 1){
  # Preallocate vect and set the first 2 terms
  # Check to see if the values are integers and positive
  if(n < 0 || k < 0){
    return('Input values must be positive')
  }
  # Check for whole number with that specific tolerance
  if(abs(n - round(n)) > 0.0005 || abs(k - round(k)) > 0.0005){
    return('Input values must be integers')
  } 
  vect <- rep(k, n)
  # if statements check if the vector should be output short of the for loop
  if(n < 2){
    return(vect)
  }
  # for statement for the rest of the terms
  else if (n < 3){
    vect[2] <- 1
    return(vect)
  }
  else{
  for(i in 3:n){
    vect[i] <- vect[i - 2] + vect[i -1]
  }
  return(vect)
  }
}

# Problem #2 time-growth model
growth_model <- function(n_init = 100, gen = 100, r = 0.2, K = 20000){
 # Prealllocate abundance vector
  abundance <- rep(n_init, gen)
  # Run the model and plot
  for(i in 2:gen){
    abundance[i] <- abundance[i-1] + (r*abundance[i - 1]*(K - abundance[i - 1])/K)
  }
  plot(1:gen, abundance)
  return(abundance)
}

# Problem #3 Social network
# First function
# This function takes an adjacency matrix and turns it a pairwise table
adjmatrix_to_pairwise <- function(table){
  # get necessary variables
  n <- nrow(table)
  counter <- 1
  numb <- sum(table != 0)
  pairtable <- matrix(0, numb, 3)
  # Loop over rows and columns and pull out the data wanted
  for(i in 1:n){
    for(j in 1:n){
      if(table[i,j] > 0){
        pairtable[counter, 1] <- i
        pairtable[counter, 2] <- j
        pairtable[counter, 3] <- data[i,j]
        counter <- counter + 1
      }
    }
  }
  return(pairtable)
}
 
# Function 2 
# This function goes from a pairwise table back to an adj matrix
pairwise_to_adjmatrix <- function(pairwise){
  # Get table size and initialize
  nrows <- max(pairwise[,1])
  ncols <- max(pairwise[,2])
  adjmat <- matrix(0, nrows, ncols)
  # loop through every row in pairwise
  for(i in 1:nrow(pairwise)){
     # make it easier to tell whats going on
      rowval <- pairwise[i,1]
      colval <- pairwise[i,2]
      # put in data to adjmat
      adjmat[rowval, colval] <- pairwise[i, 3]
  }
  return(adjmat)
}
