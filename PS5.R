library(sf)
library(ggplot2)
library(textdata)
library(tmap)
library(tmaptools)
library(leaflet)
library(dplyr)
#library(rtweet)
library(twitteR)
library(dplyr)
library(lubridate)
library(tm)
library(SentimentAnalysis)
library(tidyr)
library(tidytext)
library(remotes)
library(quanteda)
library(maps)
library(lubridate)
library(syuzhet)
library(SentimentAnalysis)

get_sentiments("bing")
get_sentiments("loughran")
get_sentiments("afinn")
get_sentiments("nrc")

ps5 <- read.csv(file.choose())

ps5Text<- ps5$text
View(ps5Text)

wordByLine <- ps5Text %>%
  mutate(linenumber = row_number()) %>%
  unnest_tokens(word, V1)
