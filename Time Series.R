# Milestone Project - Vishekha and Sanchit

# Importing the white wine data:-
PigNew = read.csv("PigsNew.csv") 

#Time Series Plot
pig_ts = ts(PigNew$Slaughtered, frequency = 12, start = 1980)
plot(pig_ts)

ggplot(PigNew, aes(Month, Slaughtered)) + geom_point() + geom_line() + xlab("Year") + ylab("Slaughtered") + scale_x_continuous(breaks = seq(1, max(PigNew$Month), 1)) + geom_smooth(method = "lm", se=FALSE)

# the decompose function allows for both additive and multiplicative models
(pig_decomposition = decompose(pig_ts, type = "multiplicative"))
# get the seasonal index
pig_decomposition$seasonal
# get the trend (centered moving average)
pig_decomposition$trend

# we can also plot it
plot(pig_decomposition)

library(forecast)

# we use the seasadj function of package forecast to directly get the deseasonalized forecasts
(PigNew$deseasonalized = seasadj(pig_decomposition))

# in addition, we get the season indexes
(PigNew$SI = pig_decomposition$seasonal)


# now get the regression equation
pig_deseasonalized_regression = lm(deseasonalized ~  + Period, data = PigNew)
summary(pig_deseasonalized_regression)

Call:
  lm(formula = deseasonalized ~ Period, data = PigNew)

Residuals:
  Min     1Q Median     3Q    Max 
-58392  -9449   1888   9620  26215 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 91580.286   1905.308  48.066   <2e-16 ***
  Period         -9.632     17.484  -0.551    0.582    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 13010 on 186 degrees of freedom
Multiple R-squared:  0.001629,	Adjusted R-squared:  -0.003739 
F-statistic: 0.3035 on 1 and 186 DF,  p-value: 0.5824

# then, calculate the projected sales using the deseasonalized forecast and multiplying it with the seasonal adjustment
newdata = data.frame(Period = c(181:192))
(deseasonalized_prediction = predict(pig_deseasonalized_regression, newdata = newdata))
89836.94 89827.30 89817.67 89808.04 89798.41 89788.78 89779.15 89769.51 89759.88 89750.25 89740.62 89730.99 

# to get the actual prediction, we need to multiply the deseasonalized prediction with the respective seasonal index

(PigNew$adjusted_prediction = pig_deseasonalized_regression$fitted.values * PigNew$SI) 

(adjusted_prediction = deseasonalized_prediction * pig_decomposition$figure) 

79486.20 82647.99 91751.92 87086.36 92303.28 91192.05 95820.29 91954.47 88299.55 90939.75 89503.32 96408.72 

# now, let's plot the prediction for the next 4 quarters
# it is convenient to create a new data set for this
(Newdatapig1 = data.frame(Period = c(1:200), Slaughtered = c(PigNew$Slaughtered, rep(NA,12)), Forecast = c(PigNew$adjusted_prediction, adjusted_prediction)))

# finally, let's plot this 
ggplot(Newdatapig1, aes(Period, Slaughtered)) + geom_point() + geom_line() + xlab("Period") + ylab("Slaughtered") + scale_x_continuous(breaks = seq(1, max(Newdatapig1$Period), 1)) +
  geom_line(aes(Period, Forecast, color = 'red'), data = Newdatapig1)

#Time Series Regression with Seasonality and Trend Components
error1=PigNew$Slaughtered - PigNew$deseasonalized 
(error1_sqrd_sum= sum(error2^2)) 
4367877872
(abs_perc_error1_sum=  sum((abs(error2)/PigNew$Slaughtered)*100))
790.3083
(MSE= error1_sqrd_sum/180) 
24265988
(MAPE=abs_perc_error1_sum/180)
4.390602

#Multiplicative Time Series Decomposition
error2=PigNew$Slaughtered - PigNew$adjusted_prediction
(error2_sqrd_sum= sum(error2^2))
31782511289
(abs_perc_error2_sum=  sum((abs(error2)/PigNew$Slaughtered)*100)) 
2360.267
(MSE= error2_sqrd_sum/180)
176569507
(MAPE=abs_perc_error2_sum/180)
13.1126
