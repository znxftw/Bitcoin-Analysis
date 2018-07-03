# BTC Analysis

# If you don't already possess the libraries, un-comment this section
# install.packages('randomForest')
# install.packages('ggplot2')
# install.packages('lubridate')
# install.packages('xgboost')
# install.packages('anytime')

# Importing the libraries
suppressMessages(library(randomForest))
suppressMessages(library(ggplot2))
suppressMessages(library(scales))
suppressMessages(library(lubridate))
suppressMessages(library(xgboost))
suppressMessages(library(anytime))

# Reading the file and splitting the dataset
dataset = read.csv('BTC_DATA.csv')
dataset = dataset[nrow(dataset):1,]

dataset$Date = dmy(dataset$Date)
dataset$Date = anytime(dataset$Date)

training_set = head(dataset, 2600)
test_set = tail(dataset,122)

# Plotting test_set vs training_set
ggplot(guide ='legend') +
  geom_line(data = training_set,
            aes(x = Date, 
                y = MKPRU,
                colour = "#00FF00")
            ) +
  geom_line(data = test_set,
            aes(x = Date, 
                y = MKPRU,
                colour = "#FF0000")
            ) +
  ggtitle('Set seggregation') +
  xlab('Date') +
  ylab('Price ($)') +
  scale_color_discrete(name = "Legend", labels = c("Training set", "Test set"))

# Random Forest Regression
rf_regressor = randomForest(x = training_set[2:32],
                            y = training_set$MKPRU,
                            ntree = 500)
rf_pred = predict(rf_regressor, test_set[2:32])

ggplot() +
  geom_line(aes(x = test_set$Date, y = test_set$MKPRU),
            colour = 'red',
            show.legend = TRUE) +
  geom_line(aes(x = test_set$Date, y = rf_pred),
            colour = 'green',
            show.legend = TRUE) +
  ggtitle('Random Forest Regression') +
  xlab('Date') +
  ylab('Price ($)')

# XGBoost
xg_regressor = xgboost(data = as.matrix(training_set[2:32]), 
                       label = training_set$MKPRU, 
                       nrounds = 300,
                       verbose = 0)
xg_pred = predict(xg_regressor, 
                  newdata = as.matrix(test_set[2:32]))

ggplot() +
  geom_line(aes(x = test_set$Date, y = test_set$MKPRU),
                colour = 'red',
                show.legend = TRUE) +
  geom_line(aes(x = test_set$Date, y = xg_pred),
                colour = 'green',
                show.legend = TRUE) +
  ggtitle('XGBoost') +
  xlab('Date') +
  ylab('Price ($)')