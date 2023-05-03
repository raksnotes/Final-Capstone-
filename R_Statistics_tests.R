library(tidyverse)
library(dplyr)


covid_df <- read.csv(file="JHU_Cases_Deaths_with_CRE_Data_2_0.csv", check.names=F,stringsAsFactors = F)


stuff <- lm(deaths ~ zero_rf+one_two_rf+three_rf, data=covid_df)

summary(stuff)


stuff2 <- lm(deaths ~ white_pop+hispanic_pop+black_pop+asian_pop+pacific_islander_pop+native_pop+other_race_pop+bi_tri_racial_pop, data=covid_df)
)

summary(stuff2)
plt <- ggplot(covid_df,aes(x=deaths,y=white_pop+hispanic_pop+black_pop+asian_pop+pacific_islander_pop+native_pop+other_race_pop+bi_tri_racial_pop, data=covid_df)
)

plt + geom_point()  + geom_smooth(method = "lm", se = FALSE)

stuff3 <- lm(deaths ~ disability_pop, data=covid_df)

summary(stuff3)

insurint <- aov(cbind(cases, deaths)~ no_health_insur*white_pop + no_health_insur* hispanic_pop + no_health_insur*black_pop + no_health_insur*asian_pop + no_health_insur*pacific_islander_pop +no_health_insur* no_health_insur*native_pop + no_health_insur*other_race_pop + no_health_insur* bi_tri_racial_pop, data = covid_df)
summary(insurint)



stuff4 <-lm(deaths ~ no_health_insur+no_vehicle, data=covid_df)
summary(stuff4)

total_summary <- summarise(covid_df, mean(deaths), median(deaths),var(deaths),sd(deaths))

t.test((covid_df$deaths), mu=349.1232)

t.test(subset(covid_df, (zero_rf)$deaths, mu = 349.1232)

disability <- aov(cbind(cases, deaths)~ disability_pop*white_pop + disability_pop* hispanic_pop + disability_pop*black_pop + disability_pop*asian_pop + disability_pop*pacific_islander_pop +disability_pop* disability_pop*native_pop + disability_pop*other_race_pop + disability_pop* bi_tri_racial_pop, data = covid_df)
summary(disability)
       