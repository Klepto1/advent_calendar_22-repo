# Day 3 | Part 2 ----

data <- readLines("C:/Users/tinti/Documents/Day 1 AOC/day3_input.txt")
all_letters <-c(letters, LETTERS)
duplicates <- c()
for (i in 1:length(data)){
  if (i %% 3 == 0){
  A <- unique(unlist(strsplit(data[i], split = '')))
  B <- unique(unlist(strsplit(data[i-1], split = '')))
  C <- unique(unlist(strsplit(data[i-2], split = '')))
  
  for (j in A){
    if (j %in% B && j %in% C){
      duplicates <- c(duplicates, j)
   }}}
}  

point <- 0
for (i in 1:length(duplicates)){
  index_holder <- match(duplicates[i], all_letters)
  point <- point + index_holder
  
}
point
