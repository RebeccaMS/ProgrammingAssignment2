## Below are two functions that are used to cache the inverse of a matrix.
## 

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setmatrix <- function(inverse) <- inverse
  getmatrix <- function() inv
  list(set = set, get = getinv)
       setinv = setinv
       getinv = getinv
}


## This function computes the inverse of the matrix created by makeCacheMatrix. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  inv <- solve()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  mat.data <- x$get()
  inv<- solve(mat.data, ...)
  x$setsolve(inv)
  inverse()
}
