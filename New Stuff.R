doc1 <- read.csv("https://raw.githubusercontent.com/nassarhuda/easy_data/master/programming_languages.csv")
tail(doc1)
doc2 <- data.frame(year = c(2020), language = c("Crazy"))
doc3 <- rbind(doc1, doc2)
tail(doc3)
add <- function(df, year, code) {
  doc2 <- data.frame(year = c(year), language = c(code))
  doc3 <- rbind(doc1, doc2)
  return(doc3)
}
doc4 <- add(doc1, 2021, "NewDay")
tail(doc4)
library(tidyverse)
doc1 <- doc1 %>% 
  add_row(year = 2020, language = "Crazy", .before = 72)
tail(doc1)
