# Control Structures

## If
if (FALSE) {
  print('sdfklja')
}

if (4 > 9) {
  print('lakdj')
}



## Else
x <- 10^2
y <- 19^2
z <- 100^2

if (x > y) {
  print(x)
} else {
  print(y)
}

if (x > y) {
  print(x)
} else if (y > z) {
  print(y)
} else {
  print(z)
}


1:100

## For      => kita tau jumlah iterasi
for (i in seq(1, 100, 15)) {
  print(paste('hello', i))
}

for (elemen in list(c(1,3), c(1,4), c(4,2), "hello")) {
  print(elemen)
}


## While    => kita nggak mentingin jumlah iterasinya berapa
my_vector <- c(1, 3, 12, 3, 1, 41, 4, 1000, 1, 5, 4, 6)

while (my_vector[1] != 1000) {
  print(my_vector[1])
  
  my_vector <- my_vector[-1]
}


if (TRUE) {
  print('ok')
}

key <- 53
temp <- 1


for (i in 1:100) {     # kita udah expect bakal ada berapa iterasi
  temp[i] <- (i == key)
}

ans <- 1
while (ans != key) {    # kita nggak kepikiran, nanti pasti berhenti
  ans <- ans + 1
}

i <- 1
while (i != 101) {
  print(i)
  i <- i + 1
}



## Break
for (i in 1:100) {
  print(i)
  
  if (i == 23) {break}
}

for (i in 1:100) {
  if (i == 53) {
    print(i)
    break
  }
}


## Next
for (i in 1:100) {
  if (i == key) {
    next
  }
  
  print(i)
}

for (i in 1:100) {
  if (i == key) {
    print('oho')
    next
  }
  
  print(i)
}


for (i in 1:100) { # ini salah
  print(i)
  
  if (i == key) {
    next
  }
}


# If, Else, For, While, Break, Next  => control structures


