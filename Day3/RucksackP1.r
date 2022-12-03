# Day 3|Part 1 ----

data <- readLines("C:/Users/tinti/Documents/Day 1 AOC/day3_input.txt")

all_letters <-c(letters, LETTERS)
all_duplicates <- ""

# First loop: Slicing each item in 'data' so we can compare each half
# Second loop: Finding duplicate comparing half and appending to global vect
for (i in data){
  my_str <- unlist(strsplit(i, split = ''))
  first_half <- my_str[1:(length(my_str)/2)]
  second_half <- my_str[(length(first_half) + 1):length(my_str)]
  for (j in 1:length(first_half)){
    if (first_half[j] %in% second_half){
      all_duplicates <- c(all_duplicates, first_half[j])
      break
    }
  }
  
}
all_duplicates

# Calucalting score based on all duplicate we found
letter_point <- 0
for (i in 2:length(all_duplicates)){
  index_holder <- match(all_duplicates[i], all_letters)
  letter_point <- letter_point + index_holder
  
}

letter_point
