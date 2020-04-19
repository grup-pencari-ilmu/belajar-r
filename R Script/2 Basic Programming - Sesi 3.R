c(3,1,4,5,6, "6")


list(1, "a", TRUE, 1 + 4i)	
list(c(123,123,132), matrix(rnorm(25), nrow = 5), "KAKAKA")
list(1,TRUE, c("a","F","G","T","f"), c(F,T,F,F,T,T,F), c(1,2,1,3,1,4,1))

vector("list", length = 3)


my_list <- list(1,TRUE, c("a","F","G","T","f"), c(F,T,F,T,T,T,F), c(1,2,1,3,1,4,1))	

names(my_list) <- c("ID", "Authorized", "Code", "Answer", "Rating")

mtcars
asdf <- lm(mpg ~ hp, mtcars)

my_list[1]
typeof(my_list[1])

my_list[[1]]
typeof(my_list[[1]])

my_list$Rating


length(my_list)       # atribut yang ada di list
names(my_list)


colnames(my_list)     # tidak ada di list
rownames(my_list)
nrow(my_list)
ncol(my_list)


# special values
NULL
NaN
NA
Inf
-Inf

# Data Frames
data.frame(c(1,1,3,4), c(3,1,3,4))
data.frame(sesi_1 = c(1,1,3,4), sesi_2 = c(3,1,3,4))

df <- data.frame(id = 1:100, var_1 = rnorm(100), 
           var_2 = c("OK!", "Not OK", "?", "!"), var_3 = NA)

names(df)
colnames(df)
rownames(df)
row.names(df)

dimnames(df)
length(df)
ncol(df)
nrow(df)
dim(df)

df[3, 1:3]
df[3, ]
df$var_2

df[df$var_1 >= 0, 4]

df$var_3[df$var_1 >= 0] <- TRUE
df[is.na(df$var_3), 4]  <- FALSE



df$var_1 >= 0 
df$var_1 < 0


head(df)
tail(df)




sum(c(3,1,4,1,2,3))

c(3,4,2,5,2,3)[4]
x <- c(4,23,24,253,325)
x[4]

addition <- function(num1, num2) return(num1 + num2)

addition(1,1)

if (x[4] > 10) print(x[4])

if (x[4] > 10) {
  x <- x + 10
  if (x[4] < 10) print(x)
  else print('bukan')
}




?names
?colnames
?rownames
?row.names

?dimnames
?length
?ncol
?nrow