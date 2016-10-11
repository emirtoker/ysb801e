

A = 5; a=10 # R is case sensetive
print(paste("A ia", A))
print(paste("a is", a))
cat("A and a are equal? = ", A == a)
cat("My name is", Sys.info()["user"])

ls() # list objects in the current session

rm(a) # remove object named a
ls() # list again to see what we have

print(A) # print a to the console

# Assignment
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))
c(10.4, 5.6, 3.1, 6.4, 21.7) -> x
y <- c(x, 0, x) # c is abbreviation for combine
print(y)

x ^ 2 # take the square
sqrt(y) # square root
x/y
v <- 2*x + y + 1
length(v) # what is the length of v? why?

sum(x) # sum of values in x vector
sum(x)/length(x) # calculate mean
mean(x) # easier mean calculation
min(x); max(x)

var(x)
sd(x)
range(x)

5:17

seq(-5, 5, by = 0.2)
seq(length = 51, from = -5, by = 0.2)

rep(x, times = 5)
rep(x, each = 5)
