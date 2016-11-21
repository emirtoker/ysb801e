
# Homework 4


# A1 

# x <- seq(1,10,1)    # sample x 

myvar <- function(x) {
  mean.x <- sum(x)/length(x)
  a.x <- sapply(x, function(x) (x-mean.x)^2)
  sum(a.x)/(length(a.x)-1)
}

myvar(x)


mysd <- function(x) {
  mean.x <- sum(x)/length(x)
  a.x <- sapply(x, function(x) (x-mean.x)^2)
  var.x <- sum(a.x)/(length(a.x)-1)
  sqrt(var.x)
}

mysd(x)


# A2

x <- 4:250

hgf <- function(x) {
  hx <- (log(x)-1)/sqrt(x)
  gx <- exp(sqrt(hx))
  sin(gx^cos(gx))
}

hgf(x)


# A3

# x <- seq(1,10,1)    # sample x 

exeedence <- function(x, threshold) {
  sum(ifelse (x < threshold,1,0))
  }

exeedence(x)  


# A4

# x <- seq(1,10,1)
# y <- seq(1,20,2)

slope <- function(x, y) {
  if (length(x)!=length(y)) { 
    print(" HATA : x ve y uzunlukları farklı")
  }
  else  diff(x)/diff(y)
}
  
slope(x,y)


# A5

# x <- 385102

sumofdig <- function(x) {
  sum(as.numeric(unlist(strsplit(as.character(x), split="")))) 
}

sumofdig(x)


# A6

# x <- c(1:10000)

numofsumofdig <- function(x, m=20) {
  total <- lapply(x, sumofdig)
  sum(total==m)
}



























