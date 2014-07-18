content <- read.csv("completedata.csv", stringsAsFactors = FALSE)
colnames(content) <- c("Series", "ID", "Freq", "pat", "four", "filter", "method", "other", "legco", "fc")

table(content$pat)
table(content$four)
table(content$filter)
table(content$method)
table(content$other)
table(content$legco)
table(content$fc)

