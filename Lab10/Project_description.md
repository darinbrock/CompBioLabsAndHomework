###Above-ground biomass of Neotropical secondary forests data analysis
###### Darin Brock
###### EBIO 4420: Computational Biology

This study measured the above-ground biomass in Latin American tropical secondary forests of various ages. Old-growth forests were used as a control group for the study. Biomass data (Mg/ha) was taken at 1500 plots over 45 forest sites throughout a variety of tropical secondary forests.  
  
  The data is given in five columns: 
  1. Location (String)
  2. Age of the forest (Integer)
  3. Biomass per hectare (Double)
  4. Primary Investigator (String)
  5. Reference (String)  

  I can fairly safely ignore the last two columns. The location data will be relatively simple to parse as I'll simply need to group the data into sets for each area. However, the age column might prove to be a problem. Some of the values are "OG" instead of numbers indicating old growth forests. These will need to be pulled out and set aside in the analysis. The biomass per hectare column will be simple to import.
  
The analysis I would like to do with this data is organizing and plotting the biomass data vs age of the secondary forest for all of the individual sites as well as all of the data together. This will allow me to see the overall trend in the data and see if any of the individual sites differ drastically. In addition, I would like to try to find rainfall data and see if that data better correlates to the biomass data. Computationally, the challenge will be parsing/separating the data and  testing for correlation between the biomass and the age of the forests. 