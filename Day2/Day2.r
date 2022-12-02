# Day 2: Rock Paper Scissors ----

# Part 1
myData <- readLines("input_day2.txt")
wins <- c('A Y', 'B Z', 'C X')
draws <- c('A X', 'B Y', 'C Z')
score <- 0

for (i in 1:length(myData)){
  
  if (myData[i] %in% wins){
  score <- score + 6}
  if (myData[i] %in% draws){
  score <- score + 3}
  
  if ('X' == substr(myData[i], 3, 3)){
    score <- score + 1
  }
  if ('Y' == substr(myData[i], 3, 3)){
    score <- score + 2
  }
  if ('Z' == substr(myData[i], 3, 3)){
    score <- score + 3
  }
 
 
  }
 
# Part 2
install.packages("Dict")
library(Dict)
values <- Dict$new(
  'A Y' = 4,
  'A Z' = 8,
  'A X' = 3,
  'B X' = 1,
  'B Z' = 9,
  'B Y' = 5,
  'C X' = 2,
  'C Y' = 6,
  'C Z' = 7
)
values['A Y'] + 2
for (i in 1:length(myData)){
  
  if (values$has (substr(myData[i], 1, 3))){
    score <- score + values$get(substr(myData[i], 1, 3))
  }
}
score
