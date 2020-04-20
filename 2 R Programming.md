# Programming with R

- Mathematical Functions
  - abs(x)
  - round(x)
  - ceiling(x) -> pembulatan ke atas
  - fix(x)
  - trunc(x)  -> memotong bilangan koma
  - floor(x)
  - round(x, digits = n)
  - max(x, y)
  - min(x, y)
  - log(x, base = y)
  - log2(x)
  - log10(x)
  - exp(x)
  - sqrt(x)
  - signif(x)
  - signif(x, digits = n)
  - factorial(x)
  - cos(x)
  - sin(x)
  - tan(x)
  - acos(x)
  - asin(x)
  - atan(x)
  - atan2(y, x)
  
- Functions
	- Creating a Function
    ```R
    # Creating the function
    my_fun1 <- function(){
        print("Hello!!")
    }
    my_fun2 <- function(param){
        print(param)
    }
    my_fun3 <- function(param){
        print(param)
        return(param)
    }
    my_fun4 <- function(param){
        print(param)
        return("This is a return from a function.")
    }
    
    # Running the function
    my_fun1()
    my_fun2("Hello!!")
    my_fun3("Hello!!")
    my_fun4("Hello!!")
    
    # Assigning returned value from a function
    x1 <- my_fun1()
    x2 <- my_fun2("Hello!!")
    x3 <- my_fun3("Hello!!")
    x4 <- my_fun4("Hello!!")
    
    # Setting default value of a parameter
    my_fun5 <- function(param = "The default value of a parameter"){
        print(param)
        return("This is a return from a function.")
    }
    my_fun5("Hello!!")
    my_fun5()
    ```
	  
  - Global variables vs the local ones
    ```R
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
    ```
    
  - An example
    
    ```R
    create_data <- function(dev){
        vector1 <- 1:100
        vector2 <- 1:100 + rnorm(100, mean = 0, sd = dev)
        
        df_data <- data.frame(x = vector1, y = vector2)
        
        return(df_data)
        # or simply just ==> return(data.frame(x = vector1, y = vector2))
    }
    create_data() # no default value
    
    create_data2 <- function(n = 100, stdev = 10, stdev2 = 5, positive = TRUE){
        vector1 <- 1:n + rnorm(n, mean = 0, sd = stdev2)
    
        if (positive) {
            vector2 <- 1:n + rnorm(n, mean = 0, sd = stdev)
        } else {
            vector2 <- n:1 + rnorm(n, mean = 0, sd = stdev)
        }
    
        return(data.frame(x = vector1, y = vector2))
    }
    
    my_data <- create_data2(500, 250, 50, T)
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
    ```
  
- Objects in R
  
  - Kenapa Penting??
    - Karena fungsi butuh input dan menghasilkan output
  
- Evaluation and Converting Functions
  
  - is.numeric(x)
  - is.character(x)
  - is.integer(x)
  - is.double(x)
  - is.complex(x)
  - is.vector(x)
  - is.matrix(x)
  - is.dataframe(x)
  - as.numeric(x)
  - as.character(x)
  - as.integer(x)
  - as.double(x)
  - as.complex(x)
  - as.vector(x)
  - as.matrix(x)
  - as.dataframe(x)
  
- Vectors (satu tipe data, nggak bisa dipaksa, kalau dipaksa, bakal otomatis berubah)
  - Creating a vector
  
    ```R
    vector(mode ="numeric", 	length = 10)
    vector(mode ="integer", 	length = 10)
    vector(mode ="double", 		length = 10)
    vector(mode ="logical", 	length = 10)
    vector(mode ="character", 	length = 10)
    vector(mode ="complex", 	length = 10)
    
    c(1, 2, 3, 4)				## double
    c(1.2, 2.2, 1.3, 2.4)		## double
    c(1L, 2L, 3L, 4L)			## integer
    c("1", "2", "3", "4")		## character
    c("hello", "my", "kid")		## character
    c(TRUE, FALSE)				## logical
    c(T, F, T, F)				## logical
  c(1+0i, 2+4i)				## complex
    ```
  - Creating a sequence
  
    ```R
    1:10						## integer
    seq(1,10)
    seq(1,20,0.5)
    ```
  
  - Mixing objects in a vector
  
    Apabila dicampur, maka secara otomatis tipe data akan berubah (ada proses "coercion")
  
    ( logical => integer => double => complex => character )
  
    ```R
    ## Checking the type of mixed objects in a vector
    c(1, 1L)		## double
    c(1, "1L")		## character
    c(1, F)			## double
    c("1", F)		## character
    c(1+2i, F)		## complex
    c(1L, F)		## integer
    ```
  - Naming in a Vector
    
    ```R
    revenues <- c(13, 15, 35, 23, 21)
    
    # Check the result
    revenues
    # Check the names
    names(revenues)
    # Assign names
    names(revenues)  <- c("mon", "tue", "wed", "thu", "fri")
    # Check the result
	revenues
    # cara lain
    c("mon" = 1, "tue" = 2)
    ```
  
  - Subsetting a vector
    
    ```R
    revenues[1]
    revenues[1:3]
    revenues[1:3]
    revenues[-2]
    revenues["mon"]
    
    # Different way to do it
    revenues[c(1,3,4)]
    revenues[c(1:3, 5)]
    revenues[c("mon", "thu")]
    ```
  
- Matrices (Multidimensional Vectors)
  
  - Creating a matrix
  
    ```R
    matrix()
    matrix(nrow = 3, ncol = 2)
    matrix(data = 1, nrow = 3, ncol = 2)
    matrix(c(1,1,3,1,2,3), nrow = 3, ncol = 2)
  matrix(c(1,1,3,1,2,3), nrow = 2, ncol = 3)
    matrix(c(1,1,3,1,2,3), nrow = 2, ncol = 3, byrow = TRUE)
    
    x <- c(1, 3, 5)
    y <- c(6, 3, 4)
  cbind(x,y)
    rbind(x,y)
    
    z <- c(5, 2, 3, 4, 6, 2)
    dim(z) <- c(2,3)
    z
    dim(z) <- c(3,2)
    z
    ```
  
  - Naming in a matrix
  
    ```R
    my_mx <- matrix(ceiling(runif(32, 0, 100)), nrow = 8)
    
    colnames(my_mx) <- c("var1", "var2", "var4", "asd")
    rownames(my_mx) <- paste0("obs_", 1:8)
    names(my_mx) <- paste0("value_", 1:length(my_mx))	
    dim(my_mx)
    dimnames(my_mx)
    
    # Conflict
    row.names(my_mx) <- paste0("xox", 1:8)
    
    # Cool Names
    cool_names <- NULL
    for (i in 1:4) {
      for (j in 1:8) {
        cool_names <- c(cool_names, paste0("m[",j,",",i,"]"))
      }
    }
    names(my_mx) <- cool_names
    
    
    # dimnames
    # WARNING, little info about list
    dimnames(my_mx)
    dimnames(my_mx) <- list(c(1,2,3,4,5,6,7,8), c("A", "B", "C", "D"))
    ```
  
  - Subsetting in a matrix
  
    ```R
    # Subsetting by index
    my_mx[,]
    my_mx[1,2]
    my_mx[1:2, 3:4]
    my_mx[c(1,3,6), c("var_1", "var_4")]
    
    # Subsetting by 'names' attribute
    my_mx[4]  					# Notice that there is no comma to indicate 
    		  					# separation between rows and columns
    my_mx[c(1,5,8,12,23,32)]  
    my_mx[c("m[1,4]", "m[8,3]")]
    ```
  
- List

  - Creating a list

    ```R
    list(1, "a", TRUE, 1 + 4i)	
    list(1,TRUE, c("a","F","G","T","f"), c(F,T,F,F,T,T,F), c(1,2,1,3,1,4,1))	
    
    vector("list", length = 3)
    ```

  - Naming in a list

    ```R
    my_list <- list(1,TRUE, c("a","F","G","T","f"), c(F,T,F,T,T,T,F), c(1,2,1,3,1,4,1))	
    
    names(my_list) <- c("number", "Authorized", "Code", "Answer", "Rating")
    ```
    
  - Subsetting a list
    
    ```R
    my_list$number
    my_list[['number']]
    
    # This will result a list
    my_list['number']
    ```

- Data Frames
  
  - Creating a data frame
    
    ```R
    data.frame(c(1,1,3,4), c(3,1,3,4))
    data.frame(sesi_1 = c(1,1,3,4), sesi_2 = c(3,1,3,4))
    data.frame(id = 1:100, var_1 = rnorm(100), var_2 = "OK!", var_3 = NA)
    ```
    
  - Naming in a data frame
  
    ```R
    df_data <- data.frame(id = 1:50, var_1 = rnorm(50), var_2 = "OK!", var_3 = NA)
    
    names(df_data) <- paste0("var_", 1:length(df_data))
    colnames(df_data) <- paste0("v_", 1:length(df_data))
    row.names(df_data) <- paste0("case_", 1:nrow(df_data)) 
    # "rownames()" as an alternative to "row.names()"
    ```
    
  - Subsetting a data frame
  
    ```R
    df_data[1, 5]
    df_data[c(1,5:10), c(3,4)]
  df_data$v_1
    
    df_data[df_data$v_2 > 1.2, ]
    ```
    
    