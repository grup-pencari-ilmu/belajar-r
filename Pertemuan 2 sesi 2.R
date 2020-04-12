is.numeric(3L) # integer sama double
is.integer(3L)
is.double(3L)

is.numeric(3.1)
is.integer(3.2)
is.double(3.2)

as.numeric("3")

vector()
vector(mode = "double", length = 5)


typeof(c(1L, 2L, 3L, 4L))
T == TRUE

1:100
seq(1, 100, 2.5)

TRUE == 1
as.numeric(TRUE)


revenues <- c(123,124,523,312,534)
revenues

names(revenues) <- c("mon", "tue", "wed", "thu", "fri")
revenues




revenues[5]
revenues[1:3]
revenues[c(1,2,3)]
revenues[-c(2,3)]
revenues[c(-1,-2)]
revenues[c("mon", "tue")]

# Different way to do it
revenues[c(1,3,4)]
revenues[c(1:3, 5)]
revenues[-4]
revenues[c("mon", "thu")]
revenues[c(T,T,F,F)]

matrix(nrow = 3, ncol = 2)
matrix()
?matrix
matrix(c(1,1,3,1,2,3), nrow = 3, ncol = 2)
matrix(c(1,1,3,1,2,3), nrow = 3)
matrix(c(1,1,3,1,2,3), nrow = 3, byrow = TRUE)

x <- c(1, 3, 5)
y <- c(6, 3, 4)
z <- c(4,2,3,5,2,5,6,4,3,2,4,4,3,6,7,1)

dim(z) <- c(2,8)
z

cbind(x,y)
rbind(x,y)

asd <- ceiling(runif(32, 0, 100))
asd
my_mx <- matrix(asd, nrow = 8)
my_mx

paste0("var_", c(1,2,3,4))

paste0("value_", 1:length(my_mx))
my_mx
length(df_data)
dim(my_mx)



colnames(my_mx) <- paste0("var_", 1:4)
rownames(my_mx) <- paste0("obs_", 1:8)

names(my_mx) <- paste0("value_", 1:length(my_mx))


cool_names <- NULL
for (i in 1:4) {
  for (j in 1:8) {
    cool_names <- c(cool_names, paste0("m[",j,",",i,"]"))
  }
}
cool_names
names(my_mx) <- cool_names

my_mx["m[5,3]"]
revenues["mon"]

my_mx[ , ]
my_mx[1:2, 3:4]
my_mx[c(1,3,6), c("var_1", "var_4")]
my_mx["xox3", c("var_1", "var_4")]


dimnames(my_mx) <- list(c(1,2,3,4,5,6,7,8), c("A", "B", "C", "D"))
colnames(my_mx)
dimnames(my_mx)[[2]]
dim(my_mx)
my_mx[1,2]


sum(c(4,2,3,2,5,1,3,1,2))
factorial(c(12,3,2,5, 3))

c(4,2,3,1) * c(4,3,2,1)

