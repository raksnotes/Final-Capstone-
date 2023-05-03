library(readxl)
JHU_Cases_Deaths_with_CRE_DataVtwo <- read_excel
("C:/Users/14405/OneDrive/Desktop/CWRU BC/CWRU Capstone/Exploratory Data Analysis/JHU_Cases_Deaths_with_CRE_DataVtwo.xlsx")
View(JHU_Cases_Deaths_with_CRE_DataVtwo)

creDeaths = subset(JHU_Cases_Deaths_with_CRE_DataVtwo, 
select = c("Deaths", "hispanic_pop", "white_pop", "black_pop", "native_pop", "asian_pop", "pacific_islander_pop", "other_race_pop", "bi_tri_racial_pop"))

pairs(~deaths +hispanic_pop+white_pop+black_pop+native_pop+asian_pop+pacific_islander_pop+other_race_pop+bi_tri_racial_pop, lower.panel = panel.smooth, 
       upper.panel = panel.lm, data = Deaths)

lm2 = lm(deaths~hispanic_pop+white_pop+black_pop+native_pop+asian_pop+pacific_islander_pop
         +other_race_pop+bi_tri_racial_pop, data = deaths)
summary(lm2)
