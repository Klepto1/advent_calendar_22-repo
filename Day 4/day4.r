# Day 4 | Part 1 ----
library(tidyverse)
library(data.table)
data <- readLines("inputday4.txt")

dt <- fread("inputday4.txt", header = FALSE)






test <- c()
for (i in data){
  my_string <- unlist(strsplit(i, split='-'))
    for (j in my_string){
      print(my_string)
      j <-  as.numeric(gsub(".*?([0-9]+).*", "\\1", j))
      #if (j %% 2 == 0 && )
      test <- c(test, j)
      
        
      
    
    }
}
test
test[1]
typeof(test[1])
