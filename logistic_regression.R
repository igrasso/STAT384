##Logistic Regression 
#3/8/2020

setwd("~/Desktop/School/Spring 2020/STAT384")
library(readr)
library(tidyverse)

#Read data
df <- read_csv("Binary Logistic Regression Sample Data (1).csv")

#Eliminate unnecessary columns
df <- df %>%
    select(-X5, -X6)

#Create binary logistic model
model <- glm(admit ~ GPA + GRE + rank, data = df, family = binomial)

#Identify high-order terms in a model
bin_effects <- allEffects(model)

#Plot effects against output
plot(bin_effects)

#Display model output
summary(model)

#95% confidence intervals of log-odds
confint(model)

#Not sure why she put this in the code?
exp(coef(model))


##GPA v GRE out of curiosity 
ggplot(df, aes(GPA, GRE)) + 
  geom_point() + 
  labs(title = "GPA vs GRE")

summary(lm(GRE ~ GPA, df))
