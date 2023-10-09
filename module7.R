data("mtcars")

str(mtcars)
head (mtcars)
print(mtcars)

isS4(mtcars)
is.object(mtcars)

# Creating an S3 object
book_s3 <- list(title = "Harry Potter", author = "J.K. Rowling", year = 1997)
class(book_s3) <- "book"

# Creating an S4 object
setClass("BookS4",
         slots = list(title = "character", author = "character", year = "numeric"))

book_s4 <- new("BookS4", title = "Moby-Dick", author = "Herman Melville", year = 1851)