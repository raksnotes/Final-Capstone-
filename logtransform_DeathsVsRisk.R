rt = subset(rate, select = c("Deaths", "Total_Population_E", "Cases", "zero_risk", "one_two_risk", "three_plus_risk"))
pairs(rt) 

rate = transform(rate, logDeaths = log(Deaths))
rate = transform(rate, logTotal_Pop_E = log(Total_Population_E)) 
rate = transform(rate, logCases = log(Cases))
rate = transform(rate, log0risk = log(zero_risk))
rate = transform(rate, log12risk = log(one_two_risk))
rate = transform(rate, log3prisk = log(three_plus_risk))

rt1 = subset(rate, select = c("logDeaths", "logTotal_Pop_E", "logCases", "log0risk", 
                              "log12risk", "log3prisk"))
pairs(rt1)

