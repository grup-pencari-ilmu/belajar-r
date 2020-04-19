x <- 2

rm(list = ls())

?rm

rm(list = c("x", "z"))

rnorm(n = 10, mean = 100, sd = 50)

ls()


B <- exp(7)
A <- (134789 %% 253) * (ceiling(B/7))


A %% 2 == 1



#Cara 1
if (A %% 2 == 0) {
  C <- FALSE
} else {
  C <- TRUE
}

# Sempurnain
if ( A %% 2 == 1 ) {
  C <- TRUE
} else {
  C <- FALSE
}

# Lebih efisien
if ( A %% 2 ) {
  C <- TRUE
} else {
  C <- FALSE
}

C <- A%%2 == 1


!A%%2 == 0 && TRUE

# C <- <<conditional>>

C <- A%%2 == 1



abs(-100)
ceil(100.3)
?trunc

trunc(23912.139101)
floor(23912.139101)
round(2312.9854378573, digits = 7)


sin(pi/2)
asin(1)
pi/2
?atan2

sum(1,2,31,2)

A
sum <- 123


my_fun1 <- function(){
  print("Hello!!")
}

function() {
  print("Hii!!")
}

my_fun2 <- function(param){
  print(param)
}

my_fun2(A)

my_fun3 <- function(param){
  print(param)
  return(param)
}
my_fun3(A)
my_fun4 <- function(param){
  print(param)
  return("This is a return from a function.")
}
my_fun4(A)
my_fun5 <- function(param){
  return("This is a return from a function.")
}

my_fun1("hello")
my_fun2("Hello!!")
my_fun3("Hello!!")
my_fun4("Hello!!")

x1 <- my_fun1()
x2 <- my_fun2("Hello!!")
x3 <- my_fun3("Hello!!")
x4 <- my_fun4("Hello!!")
x5 <- my_fun5()

my_fun6 <- function(param = "The default value of a parameter"){
  print(param)
  return("This is a return from a function.")
}
my_fun6(param = "Hello!!")
my_fun6()

?rnorm
rnorm(n = 12, 12, 131)



global <- "The global one"

my_fun6 <- function(){
  global <-  "The global var has been changed"
}
my_fun7 <- function(){
  global <<- "The global var has been changed"
}

my_fun6()

global

my_fun7()
global


create_data <- function(dev){
  vector1 <- 1:100
  vector2 <- 1:100 + rnorm(100, mean = 0, sd = dev)
  
  df_data <- data.frame(x = vector1, y = vector2)
  
  return(df_data)
  # or simply just ==> return(data.frame(x = vector1, y = vector2))
}

fun_create_data <- function(dev) {
  vector1 <- 1:100  
  vector2 <- 1:100 + rnorm(100, mean = 0, sd = dev)
  
  df_data <- data.frame(x = vector1, y = vector2)
  
  return(df_data)
}

plot(fun_create_data())


create_data2 <- function(n = 100, stdev = 10, stdev2 = 5, cor_positive = TRUE){
  vector1 <- 1:n + rnorm(n, mean = 0, sd = stdev2)
  
  if (cor_positive) {
    vector2 <- 1:n + rnorm(n, mean = 0, sd = stdev)
  } else {
    vector2 <- n:1 + rnorm(n, mean = 0, sd = stdev)
  }
  
  return(data.frame(x = vector1, y = vector2))
}




my_data <- create_data2(stdev = 5)
my_data %>%
  ggplot(mapping = aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm", size = 1.3, fill = "orange") +
  labs(
    title = "Scatterplot Example",
    subtitle = paste0("Correlation = ", cor(my_data$x, my_data$y)),
    xlab = "Var X",
    ylab = "var Y"
  )


