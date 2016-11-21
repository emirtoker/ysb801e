
# Homework 1


# A1 --------------------------------------------------------------

set.seed(1)
x1 <- round(runif(10, 1, 50))

mean.x1 <- sum(x1[1:10])/length(x1)
a.x1 <- sapply(x1, function(x1) (x1-mean.x1)^2)

var1.x1 <- sum(a.x1[1:10])/length(a.x1)
var2.x1 <- var(x1)
var1.x1 < var2.x1

sd1.x1 <- sqrt(var1.x1)
sd2.x1 <- sd(x1)
sd1.x1 < sd2.x1


# A2 --------------------------------------------------------------

x2 <- as.integer(seq(2, 5000, by = 3))

a.x2 <- x2/13

var.x2 <- var(a.x2)
sd.x2 <- sd(a.x2)


# A3 --------------------------------------------------------------

x3 <- as.integer(seq(4, 250))

hx <- (log(x3)-1)/sqrt(x3)
gx <- exp(sqrt(hx))
fx <- sin(gx^cos(gx))

var.fx <- var(fx)
sd.fx <- sd(fx)

q.fx <- quantile(fx)

min.fx <- q.fx[1]
q1.fx <- q.fx[2]
med.fx <- q.fx[3]
mean.fx <- mean(fx)
q3.fx <- q.fx[4]
max.fx <- q.fx[5]


# A4 --------------------------------------------------------------

xx2 <- as.numeric(NA)

u <- c(23,2543)
v <- c(xx2,240)
b <- c(87,155)
  
# (2543-240)/(xx2-23)=(2543-155)/(87-23)  
  
xx2 <- (((u[2]-v[2])*(b[1]-u[1]))/(u[2]-b[2]))+23


# A5 --------------------------------------------------------------

char.alp <- letters
crypted_text <- c("y", "k", "n", "n", "m", "q", "o", "o", "g", "p")

crypto <- char.alp[match(crypted_text, char.alp)-2]


# A6 --------------------------------------------------------------

a <- 0
b <- 2
n <- 2   #assume that subintervals "n" is this, for divide
i <- 1
xi <- seq(i, (n+1), by = 1)

int.sinx1 <- ((b-a)/n)*sum(sin(xi))
int.sinx2 <- cos(a)-cos(b)           #theoretical solution

# A7 --------------------------------------------------------------

# Create temperature data set for 10 different meteorological station, randomly.
# Assign 4 observed values that meaning four season, for each one. (winter,spring,summer,autumn)
# Attantion : summer and spring temperature must be higher than winter and autumn
# Calculate yearly mean value for each station. Determine the cold and the hottest place.
# Calculate seasonal avarage for every station and temperature difference betwwen hottest and cold station.

# Ex : A.station <- (15,20,25,18)












