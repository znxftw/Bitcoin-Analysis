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

### Description of parameters
Abbreviation | Description
------------ | ------------
ATRCT | Median Transaction Confirmation Time
AVBLS | Average Block Size
BCDDC | Bitcoin Days Destroyed (Cumulative)
BCDDE | Bitcoin Days Destroyed
BCDDM | Bitcoin Days Destroyed (1 Month +)
BCDDW | Bitcoin Days Destroyed (1 Week +)
BCDDY | Bitcoin Days Destroyed (1 Year +)
BLCHS | api.blockchain size
CPTRA | Cost per Transaction
CPTRV | Cost % of Transaction Volume
DIFF  | Difficulty
ETRAV | Estimated Transaction Volume
ETRVU | Estimated Transaction Volume USD
HRATE | Hashrate
MIOPM | Mining Operating Margin
MIREV | Miners Revenue
MKPRU | Market Price USD
MKTCP | Bitcoin Market Capitalization
MWNTD | Bitcoin My Wallet Number of Transactions per day
MWNUS | Bitcoin My Wallet Number of Users
MWTRV | Bitcoin My Wallet Transactions Volume
NADDU | Number of Unique Bitcoin Addresses used
NETDF | Network Deficit
NTRAN | Number of Transactions
NTRAT | Total Number of Transactions
NTRBL | Number of Transactions per Block
NTREP | Number of Transactions excluding Popular Addresses
TOTBC | Total Bitcoins
TOUTV | Total Output Volume
TRFEE | Total Transaction Fees
TRFUS | Total Transaction Fees USD
TRVOU | USD Exchange Trade Volume
TVTVR | Trade Volume vs Transaction Volume Ratio




## Phase II : Applying a Machine Learning Regression Model

### (a) Selection of language and libraries based on data
Summarizing the parameters and available data, choice of programming language was narrowed down to either **Python** (using relevant libraries) or **R** (using inbuilt libraries).

On comparison of relative ease of use as well as capability to handle larger sets of data, R seemed to be a more logical choice for creating an ML model in our case.

### (b) Splitting data into training and test sets
As a response to the unbelivably steep climb in Bitcoin prices in 2017, the test set data was selected to be the past five months whereas the remaining was allocated as the training set. This was done to minimize the huge errors that all algorithms faced since it hadn't seen a linear increase as high as 2017 without extra training data. (since these parameters alone could not predict such a steep hike)

A rough plot of how the test and training set were divided are shown below :
![Set Segregation](https://raw.githubusercontent.com/znxftw/Bitcoin-Analysis/master/output-graphs/segregation.png "Division of sets")

### (c) Training the different models

#### (i) Random Forest Regression
#### (ii) XGBoost


