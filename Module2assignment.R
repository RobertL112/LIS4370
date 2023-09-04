#Robert Levine
#LIS 4370
#Module2 Introduction to basic R functions and Data Structures - assignment

assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
#assignemnt2 is a vector containing ints

myMean <- function(assignment2) { return(sum(assignment2)/length(assignment2)) }
#myMean is a function that takes in a vector and returns the mean by dividing
#the sum of the vector by the length. assignment2 is the parameter or argument
#of myMean, but MyMean will still be able to take in other numerical values.

myMean(assignment2)
#myMean outputs the correct value of 19.25.

#lets also test myMean with another vector
testVect <- c(10,4,20,9)
myMean(testVect)
#myMean also works with other vectors