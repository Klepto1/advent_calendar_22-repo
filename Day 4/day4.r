# Day 4 | Part 1 ----
library(tidyverse)
library(data.table)
data <- readLines("inputday4.txt")

dt <- fread("inputday4.txt", header = FALSE)


dt <- dt %>% 
  mutate(
    V1 = str_replace_all(V1, '-', ":"),
    V2 = str_replace_all(V2, '-', ":"),
 )
 
point <- 0
for (i in 1:nrow(dt)){
  if (sum(setdiff(eval(parse(text=dt$V1[i])), eval(parse(text=dt$V2[i]))))== 0
      | sum(setdiff(eval(parse(text=dt$V2[i])), eval(parse(text=dt$V1[i]))))== 0 ){
  point <- point + 1
  }
}

#send help spaghetti - if statement
