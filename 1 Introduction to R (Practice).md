# Latihan

1. Perhatikan code berikut ini! Dapat dilihat code `install.packages()` menggunakan parameter character dengan adanya petik dua, sedangkan code `library` tidak. Apa yang menarik dari sini? (Jawaban bersifat terbuka, lakukan analisis bebas!)

    ```R
    install.packages("tidyverse")
    library(tidyverse)
    ```
Jawab:

Menurutku, karna packages yang belum ter-*install* ibarat buku-buku diluar library (perpustakaan) yang belum teridentifikasi. Jadi untuk memasukkan ke library kita harus tau "judul" dari "buku" tsb.[^1] 

Dlm kasus ini berarti untuk meng-*install* packages , kita meng-*input* nama packages dengan parameter string agar dapat dibaca oleh R bahwa package yg kita ingin *install* bernama tidyverse.

Setelah packages ter-*install* maka untuk menggunakan packages kita dapat menggunakan code `library()` dengan meng-*input* nama packages yg diinginkan. Penulisan nama package pada code `library()` baik menggunakan tanda petik dua maupun tidak akan tetap terbaca oleh R, karena packages sudah "teridentifikasi" oleh R bahwa "tidyverse" adalah "buku" yg ingin kita "baca" dari "library".

Jadi, code `library(tidyverse)` or `library("tidyverse")` sama saja dan tetap dikenali sistem sbg perintah menggunakan packages tidyverse. Karena sama saja mungkin lebih efisien jika tidak menggunakan tanda petik dua. **(Menurutku yaak)** ***WKWKWKWK*** 

2. Berikan contoh skenario pemanfaatan/pengelolaan *working directory* pada R? (Jawaban bersifat terbuka, lakukan analisis bebas!)

    Terdapat dua perintah yang dapat digunakan untuk mengelola *working directory* pada R, yaitu **`getwd()`** dan **`setwd()`**. 
    Usahakan selalu menggunakan **`getwd()`** ketika memulai sebuah project. Hal ini dilakukan untuk mendapatkan/memastikan *working directory* project yang sedang kita kerjakan. Ketika *working directory* tersebut tidak sesuai dengan yang kita inginkan, lakukan pengubahan *working directory* dengan melakukan perintah **`setwd()`**.

    Gunakan kedua perintah tersebut untuk mengelola *working directory* pada setiap project yang dikerjakan. Hal ini dilakukan untuk menghindari penempatan *file* yang *semrawut*. Ketika kita salah melakukan pengelolaan *working directory*, dijamin kita akan kebingungan untuk menemukan *file-file* yang digunakan dalam project kita.

3. Uraikan permasalahan berikut ini

- ( TRUE & TRUE ) | FALSE

->TRUE | FALSE

->TRUE

- ( TRUE | ( FALSE & FALSE ) ) & FALSE

->(TRUE | FALSE) & FALSE

->TRUE & FALSE

->FALSE

- FALSE | TRUE & FALSE

->TRUE & FALSE

->FALSE

- FALSE & TRUE | FALSE
  

->FALSE | FALSE

->FALSE

- ( FALSE & TRUE) | ( FALSE & FALSE)
  

->FALSE | FALSE

->FALSE

4. Coba jalankan code di bawah ini

- NULL == NA
 ->logical (0)
- NA == NaN
 ->NA
- "1" == 1
 ->TRUE
- ( pi < exp(1) ) | FALSE
 ->FALSE

5. Jika `sin(x)` adalah 1, maka berapakah `x`? (coba jalankan fungsi sin, cos, dan tan pada r)

Jawab:

->asin(1) = 1.570796 atau pi/2

Karena pada Rstudio operasi trigonometri menggunakan nilai radian bukan sudut. [^2]

6. Bagaimana cara menghapus sebuah variabel dari *global environment*?

Jawab:
Dengan menggunakan `rm(list=ls())`

7. Jelaskan beberapa fungsi matematika berikut!

- `abs(x)`

  menghitung nilai absolut dari (x)

- `log(x, base = y)`

  manghitung logarithm untuk (x), dengan base y

- `exp(x)`

  menghitung nilai eksponensial untuk (x)

- `sqrt(x)`

  menghitung akar kuadrat dari (x)

- `factorial(x)`

  menghitung faktorial dari (x)

8. Buatlah kode berdasarkan petunjuk berikut!

- Sebuah bilangan `A` adalah hasil sisa pembagian 134789 dengan 253 dikali dengan hasil 'pembulatan ke atas' dari pembagian B dengan 7, di mana `B` adalah bilangan euler yang dipangkatkan 7.

- `C` adalah sebuah variabel berjenis boolean yang bernilai `TRUE` apabila `A` adalah bilangan ganjil dan `FALSE` apabila bernilai genap. Lengkapilah kode berikut ini

  ```R
  # Cara 1
  if ( <<conditional>> ) {
      C  <-  <<boolean>>
  } else {
      C  <-  <<boolean>>
  }
  ```

  ```R
  # Cara 2
  C  <-  <<conditional>>
  ```

- Berapakah nilai `A`, `B`, dan `C`?

Jawab:
Nilai A, B, dan C adalah 30301, 1096.63316,`TRUE`.

Diperoleh dari syntax berikut:
```R
  B <- exp(7)
  A <- (134789 %% 253) * (ceiling(B/7))
  
 #Cara 1
  if (A %% 2 = 0) {
      C <- FALSE
  } else {
      C <- TRUE
  }
  
  #Cara 2
C<- !A%%2==0 && TRUE```



Referensi:

[^1]: *R Packages: A Beginner's Guide, 2019, Adolfo Alvarez,* (https://www.datacamp.com/community/tutorials/r-packages-guide#packagelib)

[^2]: *R Trigonometric Function*, (http://www.endmemo.com/program/R/trig.php)
