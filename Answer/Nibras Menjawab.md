Nibras Menjawab

1. a. `2:200 / 2`

   b. `seq(5, 213, length.out = 428)`

2. a. Tidak bisa dilakukan, karena jumlah sampel yang diambil melebihi jumlah populasi

   b. Naikkan jumlah *random number* yang dibangkitkan dari fungsi `runif`  (>250)

   c. *Simple random sampling, I guess*? hehe

3. a. `normalise <- function (zx) {
     znorm = (zx-min(zx))/(max(zx)-min(zx))
     return(znorm)`

   b. `zx <- rnorm(10, 10, 4)` 

   ![image-20200419085008977](C:\Users\niefu\AppData\Roaming\Typora\typora-user-images\image-20200419085008977.png)

   `normalise (zx)`

   ![image-20200419085243018](C:\Users\niefu\AppData\Roaming\Typora\typora-user-images\image-20200419085243018.png)

   c. `normalise <- function (zx) {
     znorm = (zx-min(zx))/(max(zx)-min(zx))
     hist(znorm)`