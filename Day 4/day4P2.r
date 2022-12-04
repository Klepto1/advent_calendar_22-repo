# Day 4 | Part 2 ----
library(tidyverse)
library(data.table)

df <- fread("inputday4.txt", header = FALSE)

df <- df %>% 
  mutate(
    V1 = str_replace_all(V1, '-', ":"),
    V2 = str_replace_all(V2, '-', ":"),
  ) 

pairs_overlapping <- 0

for (i in 1:nrow(df)){
  V1 <- df$V1[i]
  V2 <- df$V2[i]
  if(sum(intersect(eval(parse(text = V1)), eval(parse(text = V2))))!= 0){
  pairs_overlapping <- pairs_overlapping + 1
  }
}
pairs_overlapping
