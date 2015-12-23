## This is a pair of functions that cache and compute the 
## inverse of a matrix.

## This function creates a matrix
## that can cache its inverse.

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
## This function computes the inverse of the
## matrix returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then
## `cacheSolve` should retrieve the inverse from the cache.
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


