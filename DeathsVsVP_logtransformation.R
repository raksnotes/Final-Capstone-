View(Original_Covid_Data_and_CRE_Data_Merged)
creCovid = subset(Original_Covid_Data_and_CRE_Data_Merged, select = c("Deaths", "Total_Population", "Rural_Pop", "Age_65+_Pop", "Disability_Pop", "Below_Poverty_Level", "Single_Mothers_Pop", "Single_Fathers_Pop", "No_Health_Insur", "Veteran"))
Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, logDeaths = log(Deaths))

 Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, logTPop = log(Total_Population))
 Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, logRural = log(Rural_Pop))
 Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, log65plus = log(Age_65+_Pop))
 pairs(creCovid)
Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, logDisability = log(Disability_Pop))
Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, logPoverty = log(Below_Poverty_Level))
 
 
Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, logSingleM = log(Single_Mothers_Pop))
Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, logSingleF = log(Single_Fathers_Pop))
Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, logNoHI = log(No_Health_Insur))
Original_Covid_Data_and_CRE_Data_Merged = transform(Original_Covid_Data_and_CRE_Data_Merged, logVets = log(Veteran))
creCovid1 = subset(Original_Covid_Data_and_CRE_Data_Merged, select = c("logDeaths", "logTPop", "logRural", "Age_65+_Pop", "logDisability", "logPoverty", "logSingleM", "logSingleF", "logNoHI", "logVets"))
 
creCovid1 = subset(Original_Covid_Data_and_CRE_Data_Merged, select = c("logDeaths", "logTPop", "logRural", "logDisability", "logPoverty", "logSingleM", "logSingleF", "logNoHI", "logVets"))
pairs(creCovid1)

panel.hist = function(x, ...) { 
                    usr = par("usr"); on.exit(par(usr))
                     par(usr = c(usr[1:2], 0, 1.5))
                      hist(x, freq = FALSE, col = "cyan", add=TRUE)
                   lines(density(x))}
                  
pairs(creCovid1, upper.panel = panel.smooth, diag.panel = panel.hist)

lm1 = lm(Deaths ~ logTPop + logRural + logDisability + logPoverty + logSingleM + logSingleF + logNoHI, logVets, data = Original_Covid_Data_and_CRE_Data_Merged)
summary(lm1)

plot(lm1)
