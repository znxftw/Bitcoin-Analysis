# Bitcoin-Analysis
Abstract : An attempt to analyse and predict the varying prices of BitCoin using Machine Learning models and Neural Networks

## Phase I : Collection of data
### Phase I involved searching the internet for various sources of datasets, finding the most appropriate ones for my endeavour and compiling them together. 
Of the choices available, blockchain parameters seemed to be the most relevant and hence the challenge was to find blockchain datasets from the beginning of time to date.

[Quandl](https://www.quandl.com/) offered data to my very needs and hence was the primary choice for a data source.

Collection of data involved scripting ways to download all the various csv files available for download and conmbining them using simple bash scripts applying **paste** and **cut** to format the columns and add appropriate headings.

For ease of use, the price of BTC was allocated as the last column in our dataset.

Upon combining data it was also noted that some datasets did not possess all values from the starting date and hence the starting date of the final dataset needed to be adjusted.

### Summary of data collected
Variable | Quantity
-------- | ---------
Number of Parameters | 32
Size of final csv | 964014 bytes
Dataset start | 2009 - 01 - 03
Dataset end | 2018 - 07 - 02
Number of rows | 2723
