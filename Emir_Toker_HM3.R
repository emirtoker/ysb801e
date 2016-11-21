
# HW3


z <- volcano # Store volcano data in z
x1 <- (0:(nrow(z) - 1)) * 10 # x-values
y1 <- (0:(ncol(z) - 1)) * 10 # y-values
y400 <- z[,41] # heights at y = 400m


# A1

maxz <- max(z)
rowcolmax <- which(z==max(z),arr.ind = TRUE)
minz <- min(z)
rowcolmin <- which(z==min(z),arr.ind = TRUE)


# A2

z <- volcano # Store volcano data in z
set.seed(1)
indices <- round(runif(6, 1, length(z))) # indices to set NA
z[indices] <- NA # set to NA in purpose

rowcolNA <- which(is.na(z), arr.ind=TRUE)
x <- rowcolNA[,1]
y <- rowcolNA[,2]

#apply(z, function(z)  )  

# NA lerin çevresindeki 8 değerin ortalamasını aldım (mean8val)
# mean8val içerisinde oluşabilecek işimiz olmayan NA ları kaldırdım, 0 ver dedim
# mean8val matrisinin unit vektörünü aldım, işimiz olan ortalamalar bu çapraz şekilde sıralanmış değerler
# z nin NA değerlerine de 0 dedim ve mean8val ile topladım
# böylece z de NA olan değerlerin koordinatları x ve y ler olmak üzere, bunların etrafındaki 8 değeri alarak
# NA lere atadım = znew

  mean8val <- (z[x-1,y-1]+z[x-1,y]+z[x-1,y+1]+z[x,y-1]+z[x,y+1]+z[x+1,y-1]+z[x+1,y]+z[x+1,y+1])/8
  mean8val[!is.finite(mean8val)] <- 0
  unitmean8 <- diag(length(x))*mean8val
  z[x,y][!is.finite(z[x,y])] <- 0 
  z[x,y] <- z[x,y]+unitmean8 
  znew <-round(z, digits = 0)
 
  
# hocanın çözümü
  
  loc_na <- which(is.na(z), arr.ind = T)
  
  mn <- apply(loc_na, 1, function(i) {
    rows<- (i[1]-1):(i[1]+1)
    cols<-(i[2]-1):(i[2]+1)
    mean(z[rows,cols], na.rm = T)
    })
  
  apply(loc_na, 2:1, function(i) print(i))
  
  z[loc_na]<- mn
  
  
  
# A3  

y400 <- z[,41]
mincell <- which(diff(sign(diff(y400)))==-2)+1
localmin <- y400[mincell]  
  

# A4
  
y400 <- z[,41]
y400n <- y400[-87]      #x ile veri sayısı uyması için sonuncu değerini yok ettim
x = seq(5, 855, 10)

slopes <- c(diff(y400n)/diff(x))

max(slopes)
min(slopes)

maxcell <- which(slopes==max(slopes))
maxsteepy <- y400n[c(maxcell,maxcell+1)]
maxsteepx <- x[c(maxcell,maxcell+1)]

mincell <- which(slopes==min(slopes))
minsteepy <- y400n[c(mincell,mincell+1)]
minsteepx <- x[c(mincell,mincell+1)]

zero.slope <- which(slopes==0)
rest.y <- y400n[sort(c(zero.slope,zero.slope+1),decreasing = F)]
rest.x <- x[sort(c(zero.slope,zero.slope+1),decreasing = F)]


