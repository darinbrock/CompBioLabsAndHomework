# lab step #3: defining sarting variables
chips <- 5;
guests <- 8;

# lab step #5: # of bags each guest eats
eaten <- 0.4;
# lab step #7: expected leftover chips the extra 1 is you
leftovers <- chips - (guests + 1)*eaten;

# Star Wars rankings
self <- c(7, 6, 5, 1, 2, 3, 4);
Penny <- c(5, 7, 6, 3, 1, 2, 4);
Jenny <- c(4, 3, 2, 7, 6, 5, 1);
Lenny <- c(1, 7, 3, 4, 6, 5, 2);
Stewie <- c(6, 7, 5, 4, 3, 1, 2);

# Penny's and Lenny's ranking of episode IV
PennyIV <- Penny[4];
LennyIV <- Lenny[4];

# Concatenate all 5 sets of ranking into a data object
Rankings <- cbind(self, Penny, Jenny, Lenny, Stewie);

# create a data frame using the rankings
Rankings_DF <- as.data.frame(Rankings);
Rankings_vec_DF <- data.frame(self, Penny, Jenny, Lenny, Stewie);

# Episode Names in a vector as Roman Numerals
EpisodeNames <- c("I", "II", "III", "IV", "V", "VI", "VII");

# Add row names to Rankings and Rankings_DF
row.names(Rankings) <- EpisodeNames;
row.names(Rankings_DF) <- EpisodeNames;

Rankings[3,]; #3rd row
Rankings_DF[,4]; # 4th column
Rankings[2,2]; # Penny's episode 2 ranking
Rankings[4:6,] # Everyone's rankings for episode 4-6
Rankings[c(2,5,7),] # Everyone's rankings for episodes 2,5,7
Rankings[c(4,6), c(2,3,5)] # Penny, Jenny, and Stewie's rankings for episodes 4,6

# Swap Lenny's rankings for episodes 2,5 in the data frame
Lenny2_orig <- Rankings_DF[2,4];
Rankings_DF[2,4] <- Rankings_DF[5,4];
Rankings_DF[5,4] <- Lenny2_orig
Rankings["III", "Penny"];
Rankings_DF["III", "Penny"];
Rankings_DF["V", "Lenny"] <- Rankings_DF["II", "Lenny"];
Rankings_DF["II", "Lenny"] <- Lenny2_orig;

Rankings_DF$Lenny[2] <- Rankings_DF$Lenny[5];
Rankings_DF$Lenny[5] <- Lenny2_orig;
# The structure between Rankings, PennyIV, and Penny
# differ. PennyIV is simply a num with one data object within.
# Penny is also a num but has seven elements. Rankings, however, is 
# a number structure with attributes "dimmnames" and headers with the vector names in chr form.


# The data frame and the matrix have the same dimensions (7x5), but 
# the matrix is a single array of number objects with character headers while the
# data frame is 7 observations of 5 variables: the 5 rankers. The matrix type is 
# double and the data frame type is list. The data frame and matrix have the same elements.