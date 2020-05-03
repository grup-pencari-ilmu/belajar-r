### Load sudoku csv
load_sudoku <- function(path) {
  sudoku <- as.matrix(read.csv(path, header = FALSE))
  colnames(sudoku) <- NULL
  
  return(sudoku)
}



### Function to examine the possibility of a number in a given cell
## High Level Functions
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

# Helping Functions
box_index <- function(a) {
  index <- c(ceiling(a/3) * 3 - 2,
             ceiling(a/3) * 3 - 1,
             ceiling(a/3) * 3
  )
  return(index)
}



### Function to solve the sudoku
## High Level Functions
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

## Core Functions
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

