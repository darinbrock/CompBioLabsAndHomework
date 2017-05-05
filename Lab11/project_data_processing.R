# Biomass of neotropical secondary forests data analysis
# Darin Brock
# EBIO 4420 
# 5/5/17

# Import the data
raw_data <- read.csv('/home/darin/Documents/CompBioLabsandHw/Lab11/Aboveground_biomass_2ndFOR database.csv')

# Data is now represented as a data frame with 6 factors
# Chronosequence (first colmn) is a factor with 41 levels
# Initialize the vector for the number of observations in each location
loc_count <- rep(0, 41)
i <- 1
for(j in 1:(length(raw_data$Chronosequence)-1))
{
  if(raw_data$Chronosequence[j] == raw_data$Chronosequence[j+1])
  {
    loc_count[i] <- loc_count[i] + 1
  }
  else
  {
    loc_count[i] <- loc_count[i] + 1
    i <- i + 1
  }
}

# loc_count now contains the number of observations in each location
# Next step is to seperate the age and biomass data based on these numbers
# Change Old Growth to NA in the age data column
for(n in 1:length(raw_data$Age))
{
  if(raw_data$Age[n] == "OG")
  {
    raw_data$Age[n] <- NA
  }
}

# Set up 2 matrices to hold the data: Each location is a seperate column
biomass_data <- matrix(data = NA, nrow = max(loc_count), ncol = length(loc_count))
age_data <- matrix(data = 0, nrow = max(loc_count), ncol = length(loc_count))

# Initialize counter variable for jumping through the data
jumper <- 0
# Loop through using nested for loops to parse the age and biomass data
for(k in 1:length(loc_count))
{
  for(l in 1:loc_count[k])
  {
    biomass_data[l,k] <- raw_data$AGB[jumper + l]
    age_data[l,k] <- as.numeric(as.character(raw_data$Age[jumper + l]))
  }
  # Add to the jumper to get to the next locations data
  jumper <- jumper + loc_count[k]
}

# Now the data is seperated out and usable
# Get the indices for the old growth data
old_growth_indices <- which(is.na(raw_data$Age))

# Loops for plotting 
# Reset jumper
jumper <- 0
# Set up matrix for storing regression data
reg_data <- matrix(0, nrow = length(loc_count), ncol = 2)
for(o in 1:ncol(biomass_data))
{
  # Generate title for this data 
  location <- as.character(raw_data$Chronosequence[jumper + o])
  title <- paste(location, "Biomass Data")
  plot(age_data[,o], biomass_data[,o], main = title, col = "black", xlab = "age (years)", ylab = "Above-ground Biomass (Mg/ha)")
  # Do a linear regression
  lin_reg <- lm(formula = biomass_data[,o] ~ age_data[,o])
  reg_data[o, 1] <- lin_reg$coefficients[1]
  reg_data[o, 2] <- lin_reg$coefficients[2]
  # Plot the regression
  abline(lin_reg)
  stats <- summary(lin_reg)
  p_value <- stats$coefficients[2,4]
  r_squared <- stats$r.squared
  # Set up p-value statement and r-squared
  statement1 <- paste("R-squared value is ", r_squared)
  statement2 <- paste("P-value is", p_value)
  mtext(statement1)
  mtext(statement2, line = -1)
  # Go to the next page
  x11()
  jumper <- jumper + loc_count[o]
}

# Plot all of the data together
plot(raw_data$Age, raw_data$AGB, main = "Biomass data for all sites")
for(i in 1:length(loc_count))
{
  abline(reg_data[i,])
}
