Ecat <- read.csv("freq.csv", stringsAsFactors = FALSE)
Dcat <- data.frame(Series = rep("D", 6303), ID = seq(1, 6303), Freq = rep(1, 6303))

Allcat <- rbind(Ecat[,1:3], Dcat)

randomindices <- sample(1:nrow(Allcat), size = 100, prob = Allcat$Freq / sum(Allcat$Freq))

subSample <- Allcat[randomindices, ]

write.csv(subSample[order(subSample$Series, subSample$ID),], row.names = FALSE, file = "forContentAnalysis.csv")
