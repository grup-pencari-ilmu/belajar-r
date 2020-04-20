## Definisi Fungsi

IP <- function(nilai, sks) {
  return(sum(nilai*sks)/sum(sks))
}

convert_nilai <- function(nilai) {
  nilai[nilai > 80] <- "A"
  nilai[nilai <= 80 & nilai > 70] <- "B"
  nilai[nilai <= 70 & nilai > 60] <- "C"
  nilai[nilai <= 60 & nilai > 50] <- "D"
  nilai[!is.character(nilai)] <- "E"
  
  return(nilai)
}

convert_nilai_angka <- function(nilai) {
  nilai <- convert_nilai(vec_nilai)
  nilai[nilai == "A"] <- 4
  nilai[nilai == "B"] <- 3
  nilai[nilai == "C"] <- 2
  nilai[nilai == "D"] <- 1
  nilai[nilai == "E"] <- 0
  
  return(as.numeric(nilai))
}




# Manipulasi Data
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

convert_nilai(vec_nilai)
df_sem3 <- data.frame("Mata Kuliah" = vec_matkul,
                      "Nilai" = convert_nilai(vec_nilai),
                      "NilaiMK" = convert_nilai_angka(vec_nilai)*vec_sks)

df_sem3_lngkp <- data.frame("Mata_kuliah" = vec_matkul,
                            "SKS" = vec_sks,
                            "Nilai_angka" = vec_nilai,
                            "Nilai_huruf" = convert_nilai(vec_nilai),
                            "Nilai_konversi" = convert_nilai_angka(vec_nilai),
                            "NilaiMK" = convert_nilai_angka(vec_nilai)*vec_sks)



IP(nilai = convert_nilai_angka(vec_nilai), sks = vec_sks)

sum(convert_nilai_angka(vec_nilai)*vec_sks) / sum(vec_sks)


## kesalahan
### nilai[nilai == "E"] tadinya nilai["E"], yang malah membuat anggota baru dg indeks
### convert_nilai_angka(vec_nilai) ==> belum bernilai vector
