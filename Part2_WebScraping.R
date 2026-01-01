install.packages("rvest")
install.packages("dplyr")

library(rvest)
library(dplyr)

url <- "http://quotes.toscrape.com/"

webpage <- read_html(url)

quotes <- webpage %>%
  html_nodes(".text") %>%
  html_text()

authors <- webpage %>%
  html_nodes(".author") %>%
  html_text()

quotes_data <- data.frame(
  Quote = quotes,
  Author = authors
)

head(quotes_data)

write.csv(quotes_data, "quotes_data.csv", row.names = FALSE)
