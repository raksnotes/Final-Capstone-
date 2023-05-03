library(readxl)


JHU_Cases_Deaths_with_CRE_DataVtwo <- read_excel("C:/Users/14405/OneDrive/Desktop/CWRU BC/CWRU Capstone/JHU_Cases_Deaths_with_CRE_DataVtwo.xlsx")
View(JHU_Cases_Deaths_with_CRE_DataVtwo)
creDeaths = subset(JHU_Cases_Deaths_with_CRE_DataVtwo, 
                   select = c("Deaths", "Zero_RF", "One-Two_RF", "Three_RF"))

Deaths = transform(JHU_Cases_Deaths_with_CRE_DataVtwo, logdeaths = log(deaths))
Deaths = transform(JHU_Cases_Deaths_with_CRE_DataVtwo, logzero_rf = log(zero_rf))
Deaths = transform(JHU_Cases_Deaths_with_CRE_DataVtwo, logone_two_rf = log(one_two_rf))
Deaths = transform(JHU_Cases_Deaths_with_CRE_DataVtwo, logthree_rf = log(three_rf))

creDeaths1 = subset(JHU_Cases_Deaths_with_CRE_DataVtwo, 
                    select = c("logdeaths", "logzero_rf", "logone_two_rf", "logthree_rf"))

lm1 = lm(deaths~zero_rf+one_two_rf+three_rf, data = JHU_Cases_Deaths_with_CRE_DataVtwo)
summary(lm1)

View(Deaths)
Deaths = transform(JHU_Cases_Deaths_with_CRE_DataVtwo, logdeaths = log(deaths))
Deaths = transform(JHU_Cases_Deaths_with_CRE_DataVtwo, logzero_rf = log(zero_rf))Deaths = transform(JHU_Cases_Deaths_with_CRE_DataVtwo, logone_two_rf = log(one_two_rf))
Deaths = transform(JHU_Cases_Deaths_with_CRE_DataVtwo, logthree_rf = log(three_rf))

creDeaths1 = subset(Deaths, select = c("deaths", "zero_rf", "one_two_rf", "three_rf"))

panel.hist = function(x) {
            usr = par("usr")
            on.exit(par(usr))
            par(usr = c(usr[1:2], 0, 1.5))
            h = hist(x, plot = FALSE)
            breaks = h$breaks
            nB = length(breaks)
            y = h$counts
            y = y/max(y)
            rect(breaks[-nB], 0, breaks[-1], y, col = "cyan")
        }
panel.lm = function(x, y, col = par("col"), bg = NA, pch = par("pch"), cex = .6, col.lm = "red") 
       {
                  points(x, y, pch = pch, col = col, bg = bg, cex = cex)
                  ok = is.finite(x) & is.finite(y)
                  if (any(ok))
                            abline(lm(y[ok] ~ x[ok]))
}

pairs(~deaths + zero_rf + one_two_rf + three_rf, lower.panel = panel.smooth, 
      diag.panel = panel.hist, upper.panel = panel.lm, data = JHU_Cases_Deaths_with_CRE_DataVtwo)


