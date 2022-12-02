# Day 1 ----

library(data.table)
library(tidyverse)

# Part 1

myData <- readLines("input.txt")

holder <- c()
elfs <- 0
for (i in myData) {
  x <- as.numeric(i)
  if (!is.na(x)){
    elfs <<- elfs + x
  } else{
    holder <<- c(holder, elfs)
   elfs <<- 0
  }
  
}

# Part 2
sum(sort(holder, decreasing = T)[1:3])

