## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  set <- function(y) {
    x <<- y
  }
  
  ## caches the value of the original matrix
  getcached <- function() cachedmatrix 
  
  #Code provided by the instructor and modified for this assignment
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse,
       getcached = getcached  ## added to the list so that value can be displayed
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  
  ## retrives cached matrix value
  cachedmatrix < x$getcached()
  
  ## determines if the mean has a value and
  ## evaluates the cached matrix and new matrix value to determine if they are the same
  ## if the cached matrix and new matrix value are the same, the saved inverse is returned
    if ((!is.null(m) ) &  (identical(cachedmatrix, x$get()) == TRUE)) {
    
    message("Matrix unchanged...getting cached data")
    return(m) 
    }
  
  ## Executed when the matrix is new or has changed
  data <- x$get()
  
  ##caches the new matrix value to a global variable
  cachedmatrix <<- x$get()
  
  ## calculates the inverse of the matrix
  m <- solve(data, ...)
  
  ## caches the inverse value 
  x$setinverse(m)
  
  ## returns the inverse of the matrix
  m 
}
