
# HW2


# A1

name <- weekdays(4:10, abbreviate = FALSE)
order <- seq(1,7)
isweekend <- is.weekend(4:10)
dataframe <- data.frame(name, order, isweekend)


# A2

set.seed(1); x <- rnorm(75)
matrice <- matrix(x, ncol=5, nrow=15)

meancol <- colMeans(matrice)
meanrow <- rowMeans(matrice)

rowcolmax <- which(matrice==max(matrice),arr.ind = TRUE)
rowcolmin <- which(matrice==min(matrice),arr.ind = TRUE)


# A3

vector <- seq(1,10)
names <- c("Emir","Mahmut","Maryam","Munise","Yetkin","Saliha")
listt <- list(vector,names,matrice,dataframe)


# A4

summary <- summary(airquality)

sdozone <-sd(airquality$Ozone)
sdsolar <-sd(airquality$Solar.R)
sdwind <-sd(airquality$Wind)
sdtemp <-sd(airquality$Temp)

varozone <-var(airquality$Ozone)
varsolar <-var(airquality$Solar.R)
varwind <-var(airquality$Wind)
vartemp <-var(airquality$Temp)


# A5

# Mean Ozone without NA  : 42.13

ozone2 <- airquality$Ozone

ozone2[is.na(ozone2)] <- 42.13
mean2 <- mean(ozone2)


ozone3 <- airquality$Ozone
mean3 <- mean(na.approx(ozone3))

# lineer interpolasyondan sonra ortalama yükseldi.
# bunun yerine NA değerlerini ortalama değerleri ile
# değiştirmek daha uygun olur
