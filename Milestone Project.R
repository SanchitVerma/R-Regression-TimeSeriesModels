# Milestone Project - Vishekha and Sanchit

# Importing the white wine data:-
whitewine = read.csv("winequality-white.csv") 

# Number of observations and number of variables in the data set
dim(whitewine)
4898   12

# names of all variables in the data set
names(whitewine)
"fixed.acidity"        "volatile.acidity"     "citric.acid"          "residual.sugar"       "chlorides"           
"free.sulfur.dioxide"  "total.sulfur.dioxide" "density"              "pH"                   "sulphates"           
"alcohol"              "quality"  

# Values of the variables in string format 
str(whitewine)

'data.frame':	4898 obs. of  12 variables:
  $ fixed.acidity       : num  7 6.3 8.1 7.2 7.2 8.1 6.2 7 6.3 8.1 ...
$ volatile.acidity    : num  0.27 0.3 0.28 0.23 0.23 0.28 0.32 0.27 0.3 0.22 ...
$ citric.acid         : num  0.36 0.34 0.4 0.32 0.32 0.4 0.16 0.36 0.34 0.43 ...
$ residual.sugar      : num  20.7 1.6 6.9 8.5 8.5 6.9 7 20.7 1.6 1.5 ...
$ chlorides           : num  0.045 0.049 0.05 0.058 0.058 0.05 0.045 0.045 0.049 0.044 ...
$ free.sulfur.dioxide : num  45 14 30 47 47 30 30 45 14 28 ...
$ total.sulfur.dioxide: num  170 132 97 186 186 97 136 170 132 129 ...
$ density             : num  1.001 0.994 0.995 0.996 0.996 ...
$ pH                  : num  3 3.3 3.26 3.19 3.19 3.26 3.18 3 3.3 3.22 ...
$ sulphates           : num  0.45 0.49 0.44 0.4 0.4 0.44 0.47 0.45 0.49 0.45 ...
$ alcohol             : num  8.8 9.5 10.1 9.9 9.9 10.1 9.6 8.8 9.5 11 ...
$ quality             : int  6 6 6 6 6 6 6 6 6 6 ...

#Summary of the data set
summary(whitewine)

fixed.acidity    volatile.acidity  citric.acid     residual.sugar     chlorides       free.sulfur.dioxide total.sulfur.dioxide
Min.   : 3.800   Min.   :0.0800   Min.   :0.0000   Min.   : 0.600   Min.   :0.00900   Min.   :  2.00      Min.   :  9.0       
1st Qu.: 6.300   1st Qu.:0.2100   1st Qu.:0.2700   1st Qu.: 1.700   1st Qu.:0.03600   1st Qu.: 23.00      1st Qu.:108.0       
Median : 6.800   Median :0.2600   Median :0.3200   Median : 5.200   Median :0.04300   Median : 34.00      Median :134.0       
Mean   : 6.855   Mean   :0.2782   Mean   :0.3342   Mean   : 6.391   Mean   :0.04577   Mean   : 35.31      Mean   :138.4       
3rd Qu.: 7.300   3rd Qu.:0.3200   3rd Qu.:0.3900   3rd Qu.: 9.900   3rd Qu.:0.05000   3rd Qu.: 46.00      3rd Qu.:167.0       
Max.   :14.200   Max.   :1.1000   Max.   :1.6600   Max.   :65.800   Max.   :0.34600   Max.   :289.00      Max.   :440.0       
density             pH          sulphates         alcohol         quality     
Min.   :0.9871   Min.   :2.720   Min.   :0.2200   Min.   : 8.00   Min.   :3.000  
1st Qu.:0.9917   1st Qu.:3.090   1st Qu.:0.4100   1st Qu.: 9.50   1st Qu.:5.000  
Median :0.9937   Median :3.180   Median :0.4700   Median :10.40   Median :6.000  
Mean   :0.9940   Mean   :3.188   Mean   :0.4898   Mean   :10.51   Mean   :5.878  
3rd Qu.:0.9961   3rd Qu.:3.280   3rd Qu.:0.5500   3rd Qu.:11.40   3rd Qu.:6.000  
Max.   :1.0390   Max.   :3.820   Max.   :1.0800   Max.   :14.20   Max.   :9.000 

# Now we would look at distribution for each of the white wine variables

# Fixed Acidity's Distribution
hist(whitewine$fixed.acidity,xlab="Fixed Acidity",ylab="Count", col="blue", main="Fixed Acidity's Distribution", breaks=20)

# Volatile Acidity's Distribution
hist(whitewine$volatile.acidity,xlab="Volatile Acidity",ylab="Count", col="blue", main="Volatile Acidity's Distribution", breaks=20)

# Citric Acid's Distribution
hist(whitewine$citric.acid,xlab="Citric Acid",ylab="Count", col="blue", main="Citric Acid's Distribution", breaks=25)

# Residual Sugar's Distribution
hist(whitewine$residual.sugar,xlab="Residual Sugar",ylab="Count", col="blue", main="Residual Sugar's Distribution", breaks=25)

# Chloride's Distribution
hist(whitewine$chlorides,xlab="Chloride",ylab="Count", col="blue", main="Chloride's Distribution", breaks=25)

# Free Sulfur Dioxide's Distribution
hist(whitewine$free.sulfur.dioxide,xlab="Free Sulfur Dioxide",ylab="Count", col="blue", main="Free Sulfur Dioxide's Distribution", breaks=25)

# Total Sulfur Dioxide's Distribution
hist(whitewine$total.sulfur.dioxide,xlab="Total Sulfur Dioxide",ylab="Count", col="blue", main="Total Sulfur Dioxide's Distribution", breaks=20)

# Density's Distribution
hist(whitewine$density,xlab="Density",ylab="Count", col="blue", main="Density's Distribution", breaks=20)

# pH's Distribution
hist(whitewine$pH,xlab="pH",ylab="Count", col="blue", main="pH's Distribution", breaks=30)

# Sulphate's Distribution
hist(whitewine$sulphates,xlab="pH",ylab="Count", col="blue", main="Sulphate's Distribution", breaks=30)

# Alcohol's Distribution
hist(whitewine$alcohol,xlab="Alcohol",ylab="Count", col="blue", main="Alcohol's Distribution", breaks=20)

# Quality's Distribution
hist(whitewine$quality,xlab="Quality",ylab="Count", col="blue", main="Quality's Distribution", breaks=5)

#calculating covariance
cor(whitewine)

                       fixed.acidity volatile.acidity  citric.acid residual.sugar   chlorides free.sulfur.dioxide total.sulfur.dioxide     density
fixed.acidity           1.00000000      -0.02269729  0.289180698     0.08902070  0.02308564       -0.0493958591          0.091069756  0.26533101
volatile.acidity       -0.02269729       1.00000000 -0.149471811     0.06428606  0.07051157       -0.0970119393          0.089260504  0.02711385
citric.acid             0.28918070      -0.14947181  1.000000000     0.09421162  0.11436445        0.0940772210          0.121130798  0.14950257
residual.sugar          0.08902070       0.06428606  0.094211624     1.00000000  0.08868454        0.2990983537          0.401439311  0.83896645
chlorides               0.02308564       0.07051157  0.114364448     0.08868454  1.00000000        0.1013923521          0.198910300  0.25721132
free.sulfur.dioxide    -0.04939586      -0.09701194  0.094077221     0.29909835  0.10139235        1.0000000000          0.615500965  0.29421041
total.sulfur.dioxide    0.09106976       0.08926050  0.121130798     0.40143931  0.19891030        0.6155009650          1.000000000  0.52988132
density                 0.26533101       0.02711385  0.149502571     0.83896645  0.25721132        0.2942104109          0.529881324  1.00000000
pH                     -0.42585829      -0.03191537 -0.163748211    -0.19413345 -0.09043946       -0.0006177961          0.002320972 -0.09359149
sulphates              -0.01714299      -0.03572815  0.062330940    -0.02666437  0.01676288        0.0592172458          0.134562367  0.07449315
alcohol                -0.12088112       0.06771794 -0.075728730    -0.45063122 -0.36018871       -0.2501039415         -0.448892102 -0.78013762
quality                -0.11366283      -0.19472297 -0.009209091    -0.09757683 -0.20993441        0.0081580671         -0.174737218 -0.30712331
                               pH   sulphates     alcohol      quality
fixed.acidity        -0.4258582910 -0.01714299 -0.12088112 -0.113662831
volatile.acidity     -0.0319153683 -0.03572815  0.06771794 -0.194722969
citric.acid          -0.1637482114  0.06233094 -0.07572873 -0.009209091
residual.sugar       -0.1941334540 -0.02666437 -0.45063122 -0.097576829
chlorides            -0.0904394560  0.01676288 -0.36018871 -0.209934411
free.sulfur.dioxide  -0.0006177961  0.05921725 -0.25010394  0.008158067
total.sulfur.dioxide  0.0023209718  0.13456237 -0.44889210 -0.174737218
density              -0.0935914935  0.07449315 -0.78013762 -0.307123313
pH                    1.0000000000  0.15595150  0.12143210  0.099427246
sulphates             0.1559514973  1.00000000 -0.01743277  0.053677877
alcohol               0.1214320987 -0.01743277  1.00000000  0.435574715
quality               0.0994272457  0.05367788  0.43557472  1.000000000



# Now, we will create Boxplot for all variables Against "Quality"

#Fixed Acidity Vs Quality
boxplot(fixed.acidity~quality,data = whitewine, main="Box Plot",xlab="Quality", ylab="Fixed Acidity")

#Volatile Acidity Vs Quality
boxplot(volatile.acidity~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="Volatile Acidity")

#Citric Acid Vs Quality
boxplot(citric.acid~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="Critic Acid")

#Residual Sugar Vs Quality
boxplot(residual.sugar~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="Residual Sugar")

#Chlorides Vs Quality
boxplot(chlorides~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="Chlorides")

#Free Sulfur Dioxide Vs Quality
boxplot(free.sulfur.dioxide~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="Free Sulfur Dioxide")

#Total sulfur dioxide Vs Quality
boxplot(total.sulfur.dioxide~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="Total Sulfur Dioxide")

#Density Vs Quality
boxplot(density~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="Density")

#pH Vs Quality
boxplot(pH~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="pH")

#Sulphates Vs Quality
boxplot(sulphates~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="Sulphates")

#Alcohol Vs Quality
boxplot(alcohol~quality,data = whitewine, main="Box Plot" ,xlab="Quality", ylab="alcohol")



#Box Plot for all the varibales with and without outliers

#boxplot for Fixed Acidity with outlier
boxplot(whitewine$fixed.acidity,main = "With Outlier")
#boxplot for Fixed Acidity without outlier
boxplot(whitewine$fixed.acidity,outline=FALSE, main ="without outlier")

#boxplot for Volatile Acidity with outlier
boxplot(whitewine$volatile.acidity,main = "With Outlier")
#boxplot for volatile Acidity without outlier
boxplot(whitewine$volatile.acidity,outline=FALSE, main ="without outlier")

#boxplot for Citric Acid with outlier
boxplot(whitewine$citric.acid,main = "With Outlier")
#boxplot for Citric Acid without outlier
boxplot(whitewine$citric.acid,outline=FALSE, main ="without outlier")

#boxplot for Residual Sugar with outlier
boxplot(whitewine$residual.sugar,main = "With Outlier")
#boxplot for Residual Sugar without outlier
boxplot(whitewine$residual.sugar,outline=FALSE, main ="without outlier")

#boxplot for Chlorides with outlier
boxplot(whitewine$chlorides,main = "With Outlier")
#boxplot for Chlorides without outlier
boxplot(whitewine$chlorides,outline=FALSE, main ="without outlier")

#boxplot for Free Sulfur Dioxide with outlier
boxplot(whitewine$free.sulfur.dioxide,main = "With Outlier")
#boxplot for Free Sulfur Dioxide without outlier
boxplot(whitewine$free.sulfur.dioxide,outline=FALSE, main ="without outlier")

#boxplot for Total Sulfur Dioxide with outlier
boxplot(whitewine$total.sulfur.dioxide,main = "With Outlier")
#boxplot for Total Sulfur Dioxide without outlier
boxplot(whitewine$total.sulfur.dioxide,outline=FALSE, main ="without outlier")

#boxplot for Density with outlier
boxplot(whitewine$density,main = "With Outlier")
#boxplot for Density without outlier
boxplot(whitewine$density,outline=FALSE, main ="without outlier")

#boxplot for pH with outlier
boxplot(whitewine$pH,main = "With Outlier")
#boxplot for pH without outlier
boxplot(whitewine$pH,outline=FALSE, main ="without outlier")

#boxplot for Sulphates with outlier
boxplot(whitewine$sulphates,main = "With Outlier")
#boxplot for Sulphates without outlier
boxplot(whitewine$sulphates,outline=FALSE, main ="without outlier")

#boxplot for Alcohol with outlier
boxplot(whitewine$alcohol,main = "With Outlier")
#boxplot for Alcohol without outlier
boxplot(whitewine$alcohol,outline=FALSE, main ="without outlier")



#Building Full Model
linearmodel = lm(quality ~.,data = whitewine)
summary(linearmodel)

Call:
  lm(formula = quality ~ ., data = whitewine)

Residuals:
  Min      1Q  Median      3Q     Max 
-3.8348 -0.4934 -0.0379  0.4637  3.1143 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)           1.502e+02  1.880e+01   7.987 1.71e-15 ***
  fixed.acidity         6.552e-02  2.087e-02   3.139  0.00171 ** 
  volatile.acidity     -1.863e+00  1.138e-01 -16.373  < 2e-16 ***
  citric.acid           2.209e-02  9.577e-02   0.231  0.81759    
residual.sugar        8.148e-02  7.527e-03  10.825  < 2e-16 ***
  chlorides            -2.473e-01  5.465e-01  -0.452  0.65097    
free.sulfur.dioxide   3.733e-03  8.441e-04   4.422 9.99e-06 ***
  total.sulfur.dioxide -2.857e-04  3.781e-04  -0.756  0.44979    
density              -1.503e+02  1.907e+01  -7.879 4.04e-15 ***
  pH                    6.863e-01  1.054e-01   6.513 8.10e-11 ***
  sulphates             6.315e-01  1.004e-01   6.291 3.44e-10 ***
  alcohol               1.935e-01  2.422e-02   7.988 1.70e-15 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
Residual standard error: 0.7514 on 4886 degrees of freedom
Multiple R-squared:  0.2819,	Adjusted R-squared:  0.2803 
F-statistic: 174.3 on 11 and 4886 DF,  p-value: < 2.2e-16

# calculate the regression ANOVA 
SSTotal <- var( whitewine$quality ) * (nrow(whitewine)-1)
SSE     <- sum( linearmodel$resid^2 )
SSreg   <- SSTotal - SSE
dfE   <- linearmodel$df.residual
dfReg <- nrow(whitewine) - 1 - dfE
MSreg <- SSreg / dfReg
MSE   <- SSE / dfE
(Fstat <- MSreg / MSE) # compare this with the summary() result earlier
174.3441
(pval  <- pf( Fstat , dfReg, dfE , lower.tail=FALSE )) # compare this with the summary() result earlier

library(ggfortify)
autoplot(linearmodel)


library(MASS)
#Linear Model with No Outliers
lm_mod <- lm(quality ~.,data = whitewine)  # robust reg model
summary(lm_mod)

# Regression Analysis
library(leaps)
#Now,let's use forward selection first
forward_lm = regsubsets(quality ~ ., data = whitewine, method = "forward", nvmax = length(whitewine)-1) # note that nvmax tells the method how many variables we want to consider at most in the model
(forward_lm_summary = summary(forward_lm))

# get the adjusted r squared values for each size of the model
forward_lm_summary$adjr2
0.1895598 0.2399208 0.2580716 0.2633925 0.2682044 0.2742929 0.2790891 0.2805767 0.2805130 0.2803931 0.2802536

plot(forward_lm_summary$adjr2,xlab =" Number of Variables ",ylab=" Adjusted RSq",type="l")
plot(forward_lm, scale='adjr2') # this is the interal plot method from leaps, which might be easier to use

#Get the number of variables with the best adjusted R2
which.max(forward_lm_summary$adjr2)
8

# and now, backward elimination
backward_lm = regsubsets(quality ~ ., data = whitewine, method = "backward", nvmax = length(whitewine)-1)
(backward_lm_summary = summary(backward_lm))

# get the adjusted r squared values for each size of the model
backward_lm_summary$adjr2 
0.1895598 0.2399208 0.2580716 0.2633415 0.2703282 0.2757705 0.2790891 0.2805767 0.2805130 0.2803931 0.2802536

plot(backward_lm, scale='adjr2') # this is the interal plot method from leaps, which might be easier to use
#Get the number of variables with the best adjusted R2
which.max(backward_lm_summary$adjr2)
8

#stepwise regression
stepwise_lm = regsubsets(quality ~ ., data = whitewine, method = "seqrep", nvmax = length(whitewine)-1)
(stepwise_lm_summary = summary(stepwise_lm))

# get the adjusted r squared values for each size of the model
stepwise_lm_summary$adjr2 
0.1895598 0.2399208 0.2580716 0.2633925 0.2703282 0.2757705 0.1117487 0.2305557 0.2805130 0.2803931 0.2802536

plot(stepwise_lm, scale='adjr2') 

#Get the number of variables with the best adjusted R2
which.max(stepwise_lm_summary$adjr2)
9

# finally, best subsets regression
best_subsets_lm = regsubsets(quality ~ ., data = whitewine, method = "exhaustive", nvmax = length(whitewine)-1)
(best_subsets_lm_summary = summary(best_subsets_lm))

# get the adjusted r squared values for each size of the model
best_subsets_lm_summary$adjr2
0.1895598 0.2399208 0.2580716 0.2633925 0.2703282 0.2757705 0.2790891 0.2805767 0.2805130 0.2803931 0.2802536

# we can also plot the adjusted R squared to see which model we should use
plot(best_subsets_lm_summary$adjr2,xlab =" Number of Variables ",ylab=" Adjusted RSq",type="l")
plot(best_subsets_lm, scale='adjr2')

#Get the number of variables with the best adjusted R2
which.max(best_subsets_lm_summary$adjr2)
8

# instead of adjusted R squared, we can use other information criteria to decide which model to chose 
# here, we use it to illustrate that different criteria will lead to different suggested models
plot(best_subsets_lm, scale='Cp')
plot(best_subsets_lm, scale='bic')

#Building the Best Model
finalmodel = lm((quality)~alcohol+sulphates+pH+density+free.sulfur.dioxide+residual.sugar+volatile.acidity+fixed.acidity,data = whitewine)
summary(finalmodel)
Call:
  lm(formula = (quality) ~ alcohol + sulphates + pH + density + 
       free.sulfur.dioxide + residual.sugar + volatile.acidity + 
       fixed.acidity, data = whitewine)

Residuals:
  Min      1Q  Median      3Q     Max 
-3.8246 -0.4938 -0.0396  0.4660  3.1208 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)          1.541e+02  1.810e+01   8.514  < 2e-16 ***
  alcohol              1.932e-01  2.408e-02   8.021 1.31e-15 ***
  sulphates            6.285e-01  9.997e-02   6.287 3.52e-10 ***
  pH                   6.942e-01  1.034e-01   6.717 2.07e-11 ***
  density             -1.543e+02  1.834e+01  -8.411  < 2e-16 ***
  free.sulfur.dioxide  3.349e-03  6.766e-04   4.950 7.67e-07 ***
  residual.sugar       8.285e-02  7.287e-03  11.370  < 2e-16 ***
  volatile.acidity    -1.888e+00  1.095e-01 -17.242  < 2e-16 ***
  fixed.acidity        6.810e-02  2.043e-02   3.333 0.000864 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.7512 on 4889 degrees of freedom
Multiple R-squared:  0.2818,	Adjusted R-squared:  0.2806 
F-statistic: 239.7 on 8 and 4889 DF,  p-value: < 2.2e-16

library(ggfortify)
autoplot(finalmodel)

#Influence Point
influencePlot(finalmodel, main="Influence Plot", sub="Circle size is proportial to Cook's Distance" ) 

linearModelfinal = lm((quality)~alcohol,data = whitewine)
summary(linearModelfinal)

Call:
  lm(formula = (quality) ~ alcohol, data = whitewine)

Residuals:
  Min      1Q  Median      3Q     Max 
-3.5317 -0.5286  0.0012  0.4996  3.1579 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 2.582009   0.098008   26.34   <2e-16 ***
  alcohol     0.313469   0.009258   33.86   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.7973 on 4896 degrees of freedom
Multiple R-squared:  0.1897,	Adjusted R-squared:  0.1896 
F-statistic:  1146 on 1 and 4896 DF,  p-value: < 2.2e-16

#Since from the above we learn that Alcohol is the most significant variable we would perform ANOVA Test
#between Alcohol (Independent Variable) and Quality(Dependent Variable) where Quality in the range of 6 and below is "Low Quality" and 7 and above as "High Qaulity"
#we are treating Quality as a Categorical Variable

randomized_design_aov = aov(AnovaWhitewine$alcohol ~ Treatment, AnovaWhiteWine_LowMediumHigh)
# to print out the resulting table, we can use the anova() function
(rd_anova = anova(randomized_design_aov))

Analysis of Variance Table

Response: AnovaWhitewine$alcohol
Df Sum Sq Mean Sq F value Pr(>F)
Treatment    2    4.9  2.4253  1.6019 0.2016
Residuals 4895 7411.3  1.5140     

(rd_anova$`F value`)
1.601875
(rd_anova$`Sum Sq`)
4.850653 7411.298276

# we can manually check if the calculated p value for the F statistic is correct
(1 - pf(rd_anova$`F value`[1], rd_anova$Df[1], rd_anova$Df[2]))
0.2016239


