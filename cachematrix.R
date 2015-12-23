## Put coinverseinverseents here that give an overall description of what Your
## functions do

## Write a short coinverseinverseent describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setmatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  getmatrix <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(setmatrix = setmatrix, getmatrix = getmatrix, setinverse = setinverse, getinverse = getinverse)
}
## Write a short coinverseinverseent describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("returning cached matrix")
    return(m)
  }
  data <- x$getmatrix()
  m <- solve(data)
  x$setinverse(m)
  return(m)
}
a <- makeCacheMatrix(matrix(c(1,3,6,2,4,7,3,5,9), nrow = 3, ncol = 3));
cacheSolve(a)
cacheSolve(a)


