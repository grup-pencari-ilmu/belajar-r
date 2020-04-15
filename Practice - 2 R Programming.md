# Practice

1. Fungsi `seq(from = 0, to = 100, by = 1)` akan menghasilkan vektor berurut dari 1 sampai 100. Hal yang sama juga dapat diperoleh dengan menggunakan operator `:` dengan menjalankan kode `1 : 100`. 

    - Kode seperti apa (yang menggunakan operator `:`) yang dapat menghasilkan hasil sama seperti *output* kode ` seq(1, 100, 0.5) `? (*Hint*:  operasi vektor `c(1,2,3) + 100` akan menghasilkan nilai 101, 102, dan 103)
      Jawab : 2:200 / 2
    - Buatlah kode dengan menggunakan fungsi `seq` untuk membuat 428 angka berurut dari 5 sampai 213! 
      Jawab : seq (5, 213, 208/427)
    

    
2. Jalankan kode berikut!

    ```R
    x <- c(round(runif(100, 1, 100), 1))
    sample_index <- sample(x = 1:length(x), 
                           size = 25)  
    
    # melihat vektor index
    sample_index
    
    x[sample_index]  # mengambil data berdasarkan vektor index
    ```

    Apabila pada fungsi `sample()` parameter `size` diganti menjadi 250, maka:

    - Apakah yang terjadi?
    - Apa yang sebaiknya dilakukan apabila menginginkan sampel berukuran 250?
    - Termasuk teknik pengambilan sampel apa yang dilakukan?

    

3. Normalisasi data dapat dilakukan dengan beberapa metode yang di antaranya dilakukan dengan menggunakan metode *Feature Scaling* dengan *range* 0 sampai dengan 1 menggunakan rumus berikut:

    $$ z_i = \dfrac{x_i - x_{min}}{x_{max} - x_{min}} $$

    di mana $ z_i $ adalah adalah nilai yang sudah dinormalisasi. $ z $ adalah kumpulan nilai yang memiliki nilai maksimal $ z_{max} $ = 1 dan nilai minimum $ z_{min} $ = 0. 

    

    Berdasarkan informasi tersebut:

    - Buatlah sebuah fungsi `normalise()` yang menormalisasikan kumpulan nilai (dalam bentuk *vector* atau *matrix*)!

    - Buatlah sebuah *vector* yang nilai di dalamnya terdistribusi normal 0 sampai dengan 1 menggunakan fungsi yang telah dibuat sebelumnya!

    - Petakan nilai dari *vector* yang dibuat sebelumnya ke dalam sebuah histogram menggunakan fungsi `hist()`! Bandingkan distribusi data pada histogram apabila data berisi 10, 100, 1000, dan 10000 nilai.

      

4. Berikut beberapa fungsi yang dapat dioperasikan dengan *input* atau menghasilkan *output* berupa vektor.

    ```R
    rep(0, 5)
    rep(c(4,6,3), 3)
    sort(c(4,5,6,2,3,1,4,66))
    sort(c(4,5,6,2,3,1,4,66), decreasing = TRUE)
    ```

    - Buatlah kode untuk mendapatkan angka terbesar keenam dari `my_var`

      ```R
      my_vector <- c(423, 765, 362, 752, 134, 963, 
                     523, 456, 375, 543, 743, 623,                
                     413, 654, 874, 205, 889, 139,
                     864, 427, 874, 985, 938, 123,
                     543, 984, 123, 234, 581, 490
                    )
      ```

    - Ubahlah `my_var` menjadi sebuah matriks 6x5 dan simpan dalam variabel `my_matrix`! 

    - Tambahkan baris baru pada `my_matrix`. Baris yang baru berisi satu angka bebas berulang. Setelah ini dimensi matriks adalah 7x5

    - Berapa nilai yang ke-23? Bagaimana cara menampilkan matriks tanpa baris ke-3 dan kolom ke-3 dan ke-4?

    - Fungsi `rowSums(my_matrix)` akan memberikan vektor berisi penjumlahan setiap baris dan `colMeans(my_matrix)` akan mengembalikan vektor berisi rata-rata setiap baris. Berapa jumlah rata-rata baris terkecil? Berapa hasil penjumlahan kolom terbesar?

    

5. Diketahui nilai mata kuliah semester 3 seorang mahasiswa bernama Uye dapat dilihat pada Tabel 1.1.
   
    - Buatlah fungsi untuk menghitung IP semester 3 Uye dengan mengkonversikan **Hasil Akhir** menjadi nilai huruf dimana nilai lebih dari 80 adalah A, nilai lebih dari 70 adalah B, nilai lebih dari 60 adalah C, nilai lebih dari 50 adalah D, dan selain itu bernilai E! Masing-masing bobot untuk nilai A, B, C, D, dan E adalah 4, 3, 2, 1, dan 0.
        - Rumus nentuin IP: IP = Sigma(Bobot Nilai MK x SKS MK) / Total SKS
    
    - Buatlah sebuah *data frame* dengan nama kolom Mata Kuliah, SKS, Nilai (dalam huruf), Bobot, Nilai MK (SKS*Bobot)! :)

**Tabel 1.1**          
![image](https://user-images.githubusercontent.com/62996587/79378749-143c5700-7f88-11ea-84f6-8765b3cf7fe3.png)
    
