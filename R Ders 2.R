
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))
c(10.4, 5.6, 3.1, 6.4, 21.7) -> x
y <- c(x, 0, x) # c is abbreviation for combine
print(y)

1/x


sum(x) # sum of values in x vector
sum(x)/length(x) # calculate mean
mean(x) # easier mean calculation
min(x); max(x)

seq(-5, 5, by = 0.2)
seq(length = 51, from = -5, by = 0.2)

rep(x, times = 5)
rep(x, each = 5)

5 > 10
x > 13
as.numeric(x > 13)


z <- c(1:3, NA) # a vector contains an NA
is.na(z)

labs <- paste(c("X","Y"), 1:10, sep="")
print(labs)


x[3] <- NA # set 3th element of x to NA
print(x)

!is.na(x)

non_na_x <- x[!is.na(x)] #non-NA values of x
print(non_na_x)


set.seed(2)
month <- round(runif(30, 1, 12))
(char_month <- month.abb[month]) 

which(char_month == "Jun")

which(month == 6)

char_month[1:12]

(char_month[-(1:20)]) # exclude first 20

(char_month[-which(month == 6)])


(m <- matrix(1:20, nrow = 5, ncol = 4,byrow = TRUE))

arr3d <- array(1:24, dim = c(4, 3, 2),
               dimnames = list(
                 c("one", "two", "three", "four"),
                 c("ein", "zwei", "drei"),
                 c("un", "deux")))
mat <- matrix(1:12, nrow = 4, byrow = TRUE,
              dimnames = list(
                c("one", "two", "three", "four"),
                c("ein", "zwei", "drei")))
class(arr3d); class(mat) # class of object
length(arr3d); length(mat) # length of object
dim(arr3d); dim(mat) # dimensions
nrow(arr3d); nrow(mat) # number of rows
ncol(arr3d); ncol(mat) # number of columns
rownames(arr3d); rownames(mat)
colnames(arr3d); colnames(mat)
dimnames(arr3d); dimnames(mat)























