library(readxl)
JHU_Cases_Deaths_with_CRE_DataVtwo <- read_excel("C:/Users/14405/OneDrive/Desktop/CWRU BC/CWRU Capstone/Exploratory Data Analysis/JHU_Cases_Deaths_with_CRE_DataVtwo.xlsx")
View(JHU_Cases_Deaths_with_CRE_DataVtwo)

creDeaths = subset(JHU_Cases_Deaths_with_CRE_DataVtwo, 
select = c("deaths", "veteran", "rural_pop", "elder_pop", "disability_pop", "below_poverty_level",
           "single_mothers_pop", "single_fathers_pop", "plus_family_homes", "no_health_insur", "no_vehicle"))

pairs(~deaths + veteran+rural_pop+elder_pop+
        disability_pop+below_poverty_level+single_mothers_pop+single_fathers_pop
      +plus_family_homes+no_health_insur+no_vehicle, lower.panel = panel.smooth, upper.pannel = panel.lm, data = Deaths)

lm3 = lm(deaths~veteran+rural_pop+elder_pop+disability_pop+below_poverty_level+
           single_mothers_pop+single_fathers_pop+plus_family_homes+no_health_insur+
           no_vehicle, data = JHU_Cases_Deaths_with_CRE_DataVtwo)

summary(lm3)
