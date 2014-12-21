## Coursera. R Programming - week 3 - Programming Assigment 2
## Caching the Inverse of a Matrix


##  Function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() {
    x
  }
  getinverse <- function() {
    i
  }
  calcinverse <- function() {
    i <<- solve(x)
    i
  }
  list(set = set, get = get,
       getinverse = getinverse,
       calcinverse = calcinverse)
}

## Function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix. If the inverse has already
## been calculated (and the matrix has not changed), then
## cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  # checking if 
  if (!is.null(inverse)) {
    # return cached inversed matrix
    message("Returning cached inversed matrix")
    return(inverse)
  }
  i <- x$calcinverse()
  i
}
