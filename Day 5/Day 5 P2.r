# Day 5 | Part 2 ----
library(data.table)
library(tidyverse)

# Clean it a bit
dt <- readLines("C:/Users/tinti/Desktop/Day 5/inputday5.txt")
dt <- gsub("[^[:digit:]., ]", "", dt)
dt <- gsub("  ",",",dt)
dt <- gsub(" ","",dt)

stacks <- c(A1 <- c("JZGVTDBN"),
            B2 <- c("FPWDMRS"),
            C3 <- c("ZSRCV"),
            D4 <- c("GHPZJTR"),
            E5 <- c("FQZDNJCT"),
            F6 <- c("MFSGWPVN"),
            G7 <- c("QPBVCG"),
            H8 <- c("NPBZ"),
            I9 <- c("JPW"))

for (i in 11:length(dt)){ # start at 11 since we 'hard coded' stacks above
  moving_instructions <- unlist(strsplit(dt[i],",")) #remove all text
  quanitity <- as.numeric(moving_instructions[1]) # first number, tells us how many to move
  from <- as.numeric(moving_instructions[2]) # second number, were to get numbers
  to <- as.numeric(moving_instructions[3]) # third nr, were to paste it
  
 
  del <- substr(stacks[from], 1, quanitity) #keeping track of what we're deleting
  stacks[from] <- substr(stacks[from], quanitity + 1,  nchar(stacks[from])) # delete and save to global
  stacks[to] <- paste(del,stacks[to], sep = "") # add what we delete to global
 
}


stacks

