# Answer

1.  Dicky :

     * 2:200/2
     * seq(5, 213, 208/427)

    Tido :

     * c(1:100) + 0,5

     * seq(5, 213, length.out=428)

     

2. * Apa yang terjadi?

     Tido: Terjadi *error* karena *sample* (250) yang diambil lebih besar dari populasi (100)
   * Apa yang dilakukan jika ingin sample berukuran 250?
   * Termasuk teknik *sampling* apa?
3.

4. * Buat kode untuk mencari angka terbesar keenam dari `my_vector`

   * Mengubah `my_vector ` menjadi matriks 6x5 dan simpan dalam variabel `my_matrix` 
     
     Jawab:

     Tido:

     ```R
     my_matrix <- matrix(my_vector, nrow = 6, ncol = 5)
     my_matrix
     ```

   * Menambahkan baris baru pada `my_matrix` sehingga dimensi matiks menjadi 7x5. Baris baru berisi satu angka bebas berulang.

     Jawab:

     Tido:

     ```R
     z <- rep(505, 5)
     my_matrix <<- rbind(my_matrix, z)
     my_matrix
     ```

   * Berapa nilai ke-23? Cara menampilkan matriks tanpa baris ke-3 dan kolom ke-3 dan ke-4.

     Jawab:

     Tido:

     * Nilai matriks ke-23:

       ```R
       my_matrix[23]
       ```

     * Menampilkan matriks:

       ```R
       my_matrix[-3, -c(3,4)]
       ```

     * Berapa jumlah rata-rata baris terkecil? Berapa hasil penjumlahan kolom terbesar?

       ```R
       #Rata-rata baris terkecil
       min(rowMeans(my_matrix))
       
       #Penjumlahan kolom terbesar
       max(colSums(my_matrix))
       ```

5.
