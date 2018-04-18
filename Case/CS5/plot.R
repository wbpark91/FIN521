setwd("/Users/park-wanbae/Desktop/MFE/2018-1/FIN521/Case/CS5")
irr = read.csv("irr.csv")
plot(irr$X...Equity,irr$IRR, xlab = "Amount of Equity",
     ylab = "IRR", type = 'l',
     main = "IRR with leverage")
