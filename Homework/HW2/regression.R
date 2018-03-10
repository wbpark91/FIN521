setwd("/Users/wanbaep2/Desktop/FIN521/Homework/HW2")
aapl = read.csv("apple.csv", skip = 3)
aapl_2000 = aapl[aapl[1] >= 200001,]
# Risk premium of AAPL
aaplpremium = aapl$AAPL.return - aapl$RF
aaplpremium_2000 = aapl_2000$AAPL.return - aapl_2000$RF

capm = lm(formula = aaplpremium ~ aapl$Mkt.RF)
ff3 = lm(formula = aaplpremium ~ aapl$Mkt.RF + aapl$SMB + aapl$HML)
ff5 = lm(formula = aaplpremium ~ aapl$Mkt.RF + aapl$SMB + aapl$HML + aapl$RMW + aapl$CMA)
ff5_2000 = lm(formula = aaplpremium_2000 ~ aapl_2000$Mkt.RF + aapl_2000$SMB + aapl_2000$HML + aapl_2000$RMW + aapl_2000$CMA)

summary(capm)
summary(ff3)
summary(ff5)
summary(ff5_2000)
