#Homework 4
#Izzi Grasso

#Problem 1
#Create data frame
df <- data.frame(
  Method = c(rep(x = "MethodA", times = 6),
             rep(x = "MethodB", times = 7),
             rep(x = "MethodC", times = 5)),
  Value = c(77, 54, 67, 74, 71, 66,
            60, 41, 59, 65, 62, 64, 52, 
            49, 52, 69, 47, 56)
)
#Null hypothesis: distributions the same
#Alternative: distributions different

#Kruskal Wallis
kruskal.test(Value ~ Method, data = df)

#We reject null at alpha = 0.05.
#There is a difference in efficacy of errosion 


