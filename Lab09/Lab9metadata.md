#####Metadata file for Brock_Lab08.r

Darin Brock
EBIO 4420

This script runs a time-growth model then writes the abundance vector and generations vector to growth_model_data.csv. In order to do this, a function called growth_model is created to run the model and then implemented with specific initial conditions. The specifications that the script was created under can be seen [here](https://github.com/flaxmans/CompBio_on_git/blob/master/Labs/Lab08/Lab08_documentation_and_metadata.md).

The model used is a discrete-time logistic growth model. It iterates once each generation and calculates the abundance due to a constant growth rate and carrying capacity.

#####The inputs to the growth_model function are as follows:
1. Initial abundance, preallocated to 100.
2. Number of generations, preallocated to 100.
3. Growth rate, preallocated to 0.2
4. Carrying capacity, preallocated to 20000.

#####The outputs to the growth_model function are as follows:
1. Abundance vector, containing the abundance of the population at each generation.
