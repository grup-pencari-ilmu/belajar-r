## Nomor 1
seq(1, 100, .5)
2:200 / 2
1:100 + 0.5

c(1:100, 23,1)
1:100

seq(5, 213, 208/427) == seq(5, 213, length.out = 428) 
seq(5, 213, length = 428)



## Nomor 2
x <- c(round(runif(100, 1, 100), 1))

sample_index <- sample(x = 1:length(x), 
                       size = 250, replace = TRUE)  



## Nomor 3
normalise <- function (zx) { 
  znorm = (zx-min(zx))/(max(zx)-min(zx))
  return(znorm)
}

zx <- rnorm(10)

hist(normalise(rnorm(10)))
hist(normalise(rnorm(100)))
hist(normalise(rnorm(1000)))
hist(normalise(rnorm(10000)))
hist(normalise(rnorm(10000000)))



## Nomor 4
my_vector <- c(423, 765, 362, 752, 134, 963, 
               523, 456, 375, 543, 743, 623,                
               413, 654, 874, 205, 889, 139,
               864, 427, 874, 985, 938, 123,
               543, 984, 123, 234, 581, 490
              )

sort(my_vector, decreasing = TRUE)[6]

my_matrix <- matrix(my_vector, nrow = 6)

my_matrix <- rbind(my_matrix, rep(505, 5))

my_matrix[3]
my_matrix[3, ]
my_matrix[23]
my_matrix[-3, -c(3,4)]
rowMeans(my_matrix)
rowSums(my_matrix)
colMeans(my_matrix)
colSums(my_matrix)

min(rowMeans(my_matrix))
max(colSums(my_matrix))



# Nomor 5
IP <- function(bobot_nilai, sks) {
  return(sum(bobot_nilai * sks) / sum(sks))
}

IP(c(3,4,3,4), c(3,3,2,3))

vec_matkul <- c(
  "MatOp", "OR 1", "STI 1", "P3", "Prakt P3", 
  "PP 2", "MNP", "ElMes", "Probabilitas", "OMI"
)
vec_nilai <- c(
  80, 84, 82, 95, 99, 63, 77, 56, 91, 69
)
vec_sks <- c(
  2, 3, 2, 3, 1, 2, 2, 2, 2, 2
)

nilai_tido <- data.frame(matkul = vec_matkul,
                         nilai = vec_nilai,
                         sks = vec_sks)

konversi_nilai_numerik <- function(nilai) {
  tmp <- vector('numeric', length = length(nilai))
  tmp[nilai > 80] <- 4
  tmp[nilai > 70 & nilai <= 80] <- 3
  tmp[nilai > 60 & nilai <= 70] <- 2
  tmp[nilai > 50 & nilai <= 60] <- 1
  tmp[nilai <= 50] <- 0
  return(tmp)
}

bobot_nilai <- konversi_nilai_numerik(nilai_tido[, 'nilai'])
bobot_nilai
sks <- nilai_tido[, 'sks']

IP(bobot_nilai, sks)






