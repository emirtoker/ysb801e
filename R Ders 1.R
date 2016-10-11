

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

5 > 10
x > 13
as.numeric(x > 13)

z <- c(1:3, NA) # a vector contains an NA
is.na(z) # which element(s) of z is NA?

z == NA # wrong way!

0/0 # meaningless

labs <- paste(c("X","Y"), 1:10, sep="")
print(labs)

x[3] <- NA # set 3th element of x to NA
print(x)

!is.na(x) # The ones that are not NA

non_na_x <- x[!is.na(x)] #non-NA values of x
print(non_na_x)

x[(length(x)-2):length(x)]   #######

# create a random integer array to
# represent month
set.seed(2)
month <- round(runif(30, 1, 12))
(char_month <- month.abb[month]) # get month names

which(char_month == "Jun") # Which are June?

which(month == 6) # same as above

(char_month[1:12]) # select first 12 months

(char_month[-(1:20)]) # exclude first 20

# exclude June from vector
(char_month[-which(month == 6)])

# use months and month names together
# set names of month
names(month) <- char_month
print(month)

(month[(month == 6)])

# also try byrow = TRUE.
(m <- matrix(1:20, nrow = 5, ncol = 4))

(m <- matrix(1:20, nrow = 5, ncol = 4,byrow = TRUE) )

(z <- 0:9)

(digits <- as.character(z))

digit <- 0:9
name <- c("zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine")
df <- data.frame(digit, name)
head(df)

str(df)

options(digits = 3) # print only 3 digits
set.seed(1) # fixed randomization for rnorm
# simulate pm10 distribution
pm10 <- 10 ^ rnorm(100, 1.6, 0.27)
pm10 <- pm10[pm10 > 40] # higher values than 40 ug/m^3
set.seed(1) # fixed randomization for sample
regions <- c("mar", "ege", "kdz", "ica", "akd", "dga", "gda")
sta <- factor(sample(1:length(regions), length(pm10), replace = T))
levels(sta) <- regions
head(data.frame(sta, pm10))

tapply(pm10, sta, mean) # means by region












