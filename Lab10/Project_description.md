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

[Poorter L, Bongers F, Aide TM, Almeyda Zambrano AM, Balvanera P, Becknell JM, Boukili V, Brancalion PHS, Broadbent EN, Chazdon RL, Craven D, de Almeida-Cortez JS, Cabral GAL, de Jong BHJ, Denslow JS, Dent DH, DeWalt SJ, Dupuy JM, Durán SM, Espírito-Santo MM, Fandino MC, César RG, Hall JS, Hernandez-Stefanoni JL, Jakovac CC, Junqueira AB, Kennard D, Letcher SG, Licona J, Lohbeck M, Marín-Spiotta E, Martínez-Ramos M, Massoca P, Meave JA, Mesquita R, Mora F, Muñoz R, Muscarella R, Nunes YRF, Ochoa-Gaona S, de Oliveira AA, Orihuela-Belmonte E, Peña-Claros M, Pérez-García EA, Piotto D, Powers JS, Rodríguez-Velázquez J, Romero-Pérez IE, Ruíz J, Saldarriaga JG, Sanchez-Azofeifa A, Schwartz NB, Steininger MK, Swenson NG, Toledo M, Uriarte M, van Breugel M, van der Wal H, Veloso MDM, Vester HFM, Vicentini A, Vieira ICG, Vizcarra Bentos T, Williamson GB, Rozendaal DMA (2016) Biomass resilience of Neotropical secondary forests. Nature 530: 211–214.](http://dx.doi.org/10.1038/nature16512)

[Poorter L, Bongers F, Aide TM, Almeyda Zambrano AM, Balvanera P, Becknell JM, Boukili V, Brancalion PHS, Broadbent EN, Chazdon RL, Craven D, de Almeida-Cortez JS, Cabral GAL, de Jong BHJ, Denslow JS, Dent DH, DeWalt SJ, Dupuy JM, Durán SM, Espírito-Santo MM, Fandino MC, César RG, Hall JS, Hernandez-Stefanoni JL, Jakovac CC, Junqueira AB, Kennard D, Letcher SG, Licona J, Lohbeck M, Marín-Spiotta E, Martínez-Ramos M, Massoca P, Meave JA, Mesquita R, Mora F, Muñoz R, Muscarella R, Nunes YRF, Ochoa-Gaona S, de Oliveira AA, Orihuela-Belmonte E, Peña-Claros M, Pérez-García EA, Piotto D, Powers JS, Rodríguez-Velázquez J, Romero-Pérez IE, Ruíz J, Saldarriaga JG, Sanchez-Azofeifa A, Schwartz NB, Steininger MK, Swenson NG, Toledo M, Uriarte M, van Breugel M, van der Wal H, Veloso MDM, Vester HFM, Vicentini A, Vieira ICG, Vizcarra Bentos T, Williamson GB, Rozendaal DMA (2016) Data from: Biomass resilience of Neotropical secondary forests. Dryad Digital Repository.](http://dx.doi.org/10.5061/dryad.82vr4)
