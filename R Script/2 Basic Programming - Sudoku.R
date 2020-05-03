my_sudoku <- as.matrix(read.csv('./R Script/_sudoku.csv', header = FALSE))
colnames(my_sudoku) <- NULL

examine_row <- vector(length = 9)
for (i in 1:9) {
  examine_row[i] <- sum(i == my_sudoku[2, ])
}
names(examine_row) <- paste0("is-", 1:9)

examine_col <- vector(length = 9)
for (i in 1:9) {
  examine_col[i] <- sum(i == my_sudoku[, 2])
}
names(examine_col) <- paste0("is-", 1:9)

examine_box <- vector(length = 9)
for (i in 1:9) {
  examine_box[i] <- sum(i == my_sudoku[1:3, 1:3])
}
names(examine_box) <- paste0("is-", 1:9)

examine_row | examine_col | examine_box
examine <- rbind(examine_row, examine_col, examine_box,
      result = !(examine_row | examine_col | examine_box))

examine[4, ]
result <- which(examine[4, ] == 1)
names(result) <- NULL

### Function to examine the possibility of a number in a given cell
## High Level Function
examine_possible_num <- function(sudoku, x, y) {
  which(examine_possibility(sudoku, x, y))
}
examine_total_possible_num <- function(sudoku, x, y) {
  sum(examine_possibility(sudoku, x, y))
}

## Core Function
examine_possibility <- function(sudoku, x, y) {
  if (sudoku[x, y] != 0) return(NULL)
  # Create Empty Variables
  examine_row <- vector(length = 9)
  examine_col <- vector(length = 9)
  examine_box <- vector(length = 9)
  box_col_index <- box_index(x)
  box_row_index <- box_index(y)
  
  # Examine the sudoku
  for (i in 1:9) {
    examine_row[i] <- sum(i == sudoku[x, ])
  }
  for (i in 1:9) {
    examine_col[i] <- sum(i == sudoku[, y])
  }
  for (i in 1:9) {
    examine_box[i] <- sum(i == sudoku[box_col_index, box_row_index])
  }
  
  # Evaluate the possibiliy of a number
  result <- !(examine_row | examine_col | examine_box)
  
  return(result)
}

# Helping Function
box_index <- function(a) {
  index <- c(ceiling(a/3) * 3 - 2,
             ceiling(a/3) * 3 - 1,
             ceiling(a/3) * 3
             )
  return(index)
}
box_index(1)


### =================================================== ###
examine_possibility(my_sudoku, 1, 3)
which(examine_possibility(my_sudoku, 1, 3) == 1)
sum(examine_possibility(my_sudoku, 1, 3))

examine_possible_num(my_sudoku, 1, 3)
examine_total_possible_num(my_sudoku, 1, 3)
examine_possibility(my_sudoku, 8, 6)


total_possible_num_matrix <- matrix(nrow = 9, ncol = 9)
for (i in 1:9) {
  for (j in 1:9) {
    total_possible_num_matrix[i, j] <- examine_total_possible_num(
                                         my_sudoku, i, j)
  }
}

examine_possible_num(my_sudoku, 1, 7)

solved_sudoku <- my_sudoku
for (i in 1:9) {
  for (j in 1:9) {
    if (examine_total_possible_num(solved_sudoku, i, j) == 1) {
      solved_sudoku[i, j] <- examine_possible_num(solved_sudoku, i, j)
    }
  }
}
iteration <- 0
while (length(which(solved_sudoku == 0))) {
  for (i in 1:9) {
    for (j in 1:9) {
      if (examine_total_possible_num(solved_sudoku, i, j) == 1) {
        solved_sudoku[i, j] <- examine_possible_num(solved_sudoku, i, j)
      }
    }
  }
  
  iteration <- iteration + 1
}

solve_sudoku_once <- function(sudoku) {
  for (i in 1:9) {
    for (j in 1:9) {
      if (examine_total_possible_num(sudoku, i, j) == 1) {
        sudoku[i, j] <- examine_possible_num(sudoku, i, j)
      }
    }
  }
  
  return(sudoku)
}

solved_sudoku2 <- my_sudoku

solved_sudoku2 <- solve_sudoku_once(solved_sudoku2)
solved_sudoku2 <- solve_sudoku_once(solved_sudoku2)
solved_sudoku2 <- solve_sudoku_once(solved_sudoku2)

iteration <- 0
while (length(which(solved_sudoku2 == 0))) {
  solved_sudoku2 <- solve_sudoku_once(solved_sudoku2)
  iteration <- iteration + 1
}


solve_sudoku_all <- function(sudoku) {
  while (length(which(sudoku == 0))) {
    sudoku <- solve_sudoku_once(sudoku)
  }
  
  return(sudoku)
}

solve_sudoku <- function(sudoku) {
  iteration       <- 0
  unsolved_sudoku <- sudoku
  solved_sudoku   <- sudoku
  
  while (length(which(solved_sudoku == 0))) {
    solved_sudoku <- solve_sudoku_once(solved_sudoku)
    
    iteration <- iteration + 1
  }
  
  result <- list(unsolved_sudoku = unsolved_sudoku,
                 solved_sudoku = solved_sudoku,
                 iteration = iteration)
  
  return(result)
}


solve_sudoku(my_sudoku)




floor(2/3)
c(ceiling(2/3) * 3 - 2,
  ceiling(2/3) * 3 - 1,
  ceiling(2/3) * 3
)
x <- 5
if (x <= 3) {
  box_index <- c(1,2,3)
} else if (x > 3 & x <= 6){
  box_index <- c(4,5,6)
} else {
  box_index <- c(7,8,9)
}
box_index

