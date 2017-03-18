# Darin Brock
# Computational Biology Lab 9
# 3/17/17

# Load the data
data <- read.csv("/home/darin/compBioSandbox/CompBio_on_git/exampleData/Cusack_et_al/Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv")

# Parse the DateTime data
# Sort by date - not sure I need this so commenting out for now.
# sorted_data <- data[order(as.Date(data$DateTime, format = "%d/%m/%Y")),]

# calcTimeDiff function
# Returns the value of the time diff in min
calcTimeDiff <- function(time1, time2){
  timediff <- difftime(time1, time2, units = "mins")
  # Convert to an integer value of the minutes between the time
  numdiff <- as.numeric(timediff)
  return(numdiff)
}

Time_Intervals <- function(data, placement, season, station){
  placement_indices <- which(data$Placement == placement)
  season_indices <- which(data$Season == season)
  station_indices <- which(data$Station == station)
  for(i in placement_indices){
    if(is.element(i, season_indices) && is.element(i, station_indices)){
    # This needs to be updated
    #intervals[i - 1] <- calcTimeDiff(data$DateTime[i - 1], data$DateTime[i])
      
    }
  }
  
  intervals <- rep(0, length(data$DateTime) - 1)
return(intervals)  
}