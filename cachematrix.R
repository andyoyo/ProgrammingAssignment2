## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    i <- NULL                           # define i
    
    set <- function(y)                  # function that changes the value of makeCacheMatrix()                                    #  
    {
        x <<- y
        i <<- NULL
        
    }
    
    get <- function() x                  # fun that gets x, literally
    setin <- function(solve) i <<-  solve  # fun that fills the i variable with the solved matrix
    getin <- function() i                # fun that gets i, literally
    
    list (set = set,                     # in the end we create a list with named elements thanks to  
          get = get,                     # the '=' sign, meaning elements can be called with the '$' 
          setin = setin,                 # extract operator later on
          getin = getin)
    
}


## Write a short comment describing this function

## This function creates the matrix object necessary for the storage of the inverse of the input,
## variables are defined and functions are listed in order to be called in the cacheSolve function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getin()                 # calls the getin fun from the global env
    if(!is.null(i))                  # if the i in the getin fun isn't null
    { message("getting cached data")     # print message
        return (i) }                       # bring the i cached in global env
    
    data <- x$get()                   # if the i in the getin is null, it calls the x that is input
    # of this fun to solve it
    i <- solve(data,...)              # solves the inverse of x 
    x$setin (i)                       # fills the i var of the global env with the solved matrix
    i 
    
    
}
