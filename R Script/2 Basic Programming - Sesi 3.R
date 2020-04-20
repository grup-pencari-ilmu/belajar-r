# Deklarasi Fungsi
normalise <- function(x, y_min = 0, y_max = 1) {
  x_min = min(x)
  x_max = max(x)
  return((x - x_min)*(y_max - y_min)/(x_max - x_min) + y_min )
}

create_class <- function(vector, kelas = "kelas") {
  matrix <- matrix(vector, length(vector)/5)
  colnames(matrix) <- c("A", "B", "C", "D", "Sp")
  rownames(matrix) <- 1:nrow(matrix)
  names(dimnames(matrix)) <- c("nomor_absen", kelas)
  
  return(matrix)
}



# Main2 dengan Data
## Vector
vc_matop <- normalise(rnorm(100), 60, 87)
vc_mnp <- normalise(rnorm(100)*rnorm(100), 55, 80)
vc_p3 <- rnorm(100, 70, 10)

.outlier_matop <- rnorm(length(vc_matop)*.05, 50, 20)
.outlier_mnp <- rnorm(length(vc_mnp)*.07, 50, 20)
.outlier_p3 <- rnorm(length(vc_p3)*.13, 50, 15)

vc_matop[sample(1:length(vc_matop), length(vc_matop)*.05)] <- .outlier_matop
vc_mnp[sample(1:length(vc_mnp), length(vc_mnp)*.07)] <- .outlier_mnp
vc_p3[sample(1:length(vc_p3), length(vc_p3)*.13)] <- .outlier_p3



## Matrix
mx_mnp <- matrix(vc_mnp, nrow = 20)
colnames(mx_mnp) <- c("A", "B", "C", "D", "Sp")
rownames(mx_mnp) <- 1:nrow(mx_mnp)
colMeans(mx_mnp)

names(dimnames(mx_mnp)) <- c("nomor_absen", "kelas")
mx_mnp

mx_mnp <- create_class(vc_mnp, "kelas_mnp")
mx_matop <- create_class(vc_matop, "kelas_matop")
mx_p3 <- create_class(vc_p3, "kelas_p3")



## List
li_dosen1 <- list(NIP = c('119991001002391'),
               nama_lengkap = "Udin Saripudin",
               mata_kuliah = c("matop", "mnp"),
               kelas_matop = mx_matop,
               kelas_mnp = mx_mnp)

li_dosen2 <- list(NIP = c('111831900001293'),
               nama_lengkap = "Tatang Suteja",
               mata_kuliah = "p3",
               kelas_p3 = mx_p3)

li_dosen1$kelas_matop
li_dosen1[[4]]
li_dosen1[['kelas_matop']]


mean(colMeans(li_dosen1[[4]]))
mean(vc_matop)




## Data Frame
wd <- ('C:/Users/Hanzo/Dropbox/_Data Science/Dummy Data')
paste0(wd,"/femalefirstname.csv")

female_first <- read.csv(paste0(wd,"/femalefirstname.csv"))
male_first <- read.csv(paste0(wd,"/malefirstname.csv"))
surname <- read.csv(paste0(wd,"/surename.csv"))


hist(.index_first_fm)
.n_gender <- c(female = 43, male = 57)

.index_first_ml <- sample(1:nrow(male_first), .n_gender['male'], 
                         replace = TRUE, prob = male_first$Percent.Frequency)
.index_first_fm <- sample(1:nrow(female_first), .n_gender['female'], 
                         replace = TRUE, prob = female_first$Percent.Frequency)
.index_surname_ml  <- sample(1:nrow(surname), .n_gender['male'], 
                         replace = TRUE, prob = surname$Percent.Frequency)
.index_surname_fm  <- sample(1:nrow(surname), .n_gender['female'], 
                         replace = TRUE, prob = surname$Percent.Frequency)

name_fm <- paste(female_first[.index_first_fm, "Name"],
                 surname[.index_surname_fm, "Name"])
name_ml <- paste(male_first[.index_first_ml, "Name"],
                 surname[.index_surname_ml, "Name"])
vc_name <- c(name_fm, name_ml)

df_nilai_mahasiswa <- data.frame(full_name = vc_name,
                 matop = vc_matop,
                 mnp = vc_mnp,
                 p3 = vc_p3)


### Mencari mahasiswa dengan rata2 nilai tertinggi
max((df_nilai_mahasiswa$matop + df_nilai_mahasiswa$mnp + df_nilai_mahasiswa$p3) / 3)

which(
  (df_nilai_mahasiswa$matop + df_nilai_mahasiswa$mnp + df_nilai_mahasiswa$p3) / 3 
   == max((df_nilai_mahasiswa$matop + df_nilai_mahasiswa$mnp + df_nilai_mahasiswa$p3) / 3))

df_nilai_mahasiswa[54,]


df_nilai_mahasiswa$total

### Manipulasi Dataframe Nilai Mahasiswa
df_nilai_mahasiswa$total <- (df_nilai_mahasiswa$matop + df_nilai_mahasiswa$mnp + df_nilai_mahasiswa$p3)
df_nilai_mahasiswa$rata2 <- df_nilai_mahasiswa$total/3

max(df_nilai_mahasiswa$rata2)
df_nilai_mahasiswa[df_nilai_mahasiswa$total == max(df_nilai_mahasiswa$total), ]
df_nilai_mahasiswa[which(df_nilai_mahasiswa$total == max(df_nilai_mahasiswa$total)), ]

