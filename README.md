# Bitcoin-Analysis
Abstract : An attempt to analyse and predict the varying prices of BitCoin using Machine Learning models and Neural Networks

## Phase I : Collection of data
### Phase I involved searching the internet for various sources of datasets, finding the most appropriate ones for my endeavour and compiling them together. 
Of the choices available, blockchain parameters seemed to be the most relevant and hence the challenge was to find blockchain datasets from the beginning of time to date.

[Quandl](https://www.quandl.com/) offered data to my very needs and hence was the primary choice for a data source.

Collection of data involved scripting ways to download all the various csv files available for download and combining them using simple bash scripts applying **paste** and **cut** to format the columns and add appropriate headings.

For ease of use, the price of BTC was allocated as the last column in our dataset.

Upon combining data it was also noted that some datasets did not possess all values from the starting date and hence the starting date of the final dataset needed to be adjusted.

### Summary of data collected
Variable | Quantity
-------- | ---------
Number of Parameters | 32
Size of final csv | 817922 bytes
Dataset start | 2011 - 01 - 19
Dataset end | 2018 - 07 - 02
Number of rows | 2723

## Phase II : Applying a Machine Learning Regression Model

### (a) Selection of language and libraries based on data
Summarizing the parameters and available data, choice of programming language was narrowed down to either **Python** (using relevant libraries) or **R** (using inbuilt libraries).

On comparison of relative ease of use as well as capability to handle larger sets of data, R seemed to be a more logical choice for creating an ML model in our case.

### (b) Interpolation of missing data
Upon inspection of our available dataset, it was noted that some of the values in almost all columns possessed zero-values. The relative percentage of such errors was low however ( < 1%  for most columns ) and hence instead of disregarding and deleting rows of such values, it was decided to fill in the missing data using appropriate methods to prevent loss of crucial data.
