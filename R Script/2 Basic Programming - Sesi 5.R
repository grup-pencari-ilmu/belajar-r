getwd()

my_sudoku <- as.matrix(read.csv('./R Script/_sudoku2.csv', header = FALSE))
colnames(my_sudoku) <- NULL
my_sudoku


1 == my_sudoku[3, ]
sum(as.numeric(1 == my_sudoku[3, ]))
sum(as.numeric(2 == my_sudoku[3, ]))
sum(as.numeric(3 == my_sudoku[3, ]))

sum(1 == my_sudoku[3, ])
sum(2 == my_sudoku[3, ])
sum(3 == my_sudoku[3, ])

for (i in 1:9) {
  print(sum(i == my_sudoku[3, ]))
}

1 == my_sudoku[, 4]
2 == my_sudoku[, 4]
3 == my_sudoku[, 4]

for (i in 1:9) {
  print(sum(i == my_sudoku[, 4]))
}

sum(as.numeric(1 == my_sudoku[1:3, 4:6]))
sum(as.numeric(5 == my_sudoku[1:3, 4:6]))


for (i in 1:9) {
  print(sum(i == my_sudoku[1:3, 4:6]))
}



test_row <- NULL
test_col <- NULL
test_box <- NULL

for (i in 1:9) {
  test_row[i] <- sum(i == my_sudoku[3, ])
}
for (i in 1:9) {
  test_col[i] <- sum(i == my_sudoku[, 4])
}
for (i in 1:9) {
  test_box[i] <- sum(i == my_sudoku[1:3, 4:6])
}

!(test_row | test_col | test_box)





# Pakai Fungsi dari "Sudoku Solver.R"
source('./R Script/Sudoku Solver.R')

my_sudoku <- load_sudoku('./R Script/_sudoku2.csv')
solve_sudoku(my_sudoku)


solve_sudoku_once(my_sudoku)


sudoku_selesaikan <- my_sudoku
while (sum(sudoku_selesaikan == 0)) {
  sudoku_selesaikan <- solve_sudoku_once(sudoku_selesaikan)
}




#while () {          # bakal berhenti ketika nerima FALSE atau NOL atau NULL
#  print('ohohoh')
#}




