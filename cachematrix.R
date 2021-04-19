## Put comments here that give an overall description of what your
## functions do

# makeCacheMatrix = function that returns a list of functions
# cacheSolve      = a matrix of the inversed 'x' is returned
# set             = set the value of a matrix
# get             = get the value of a matrix
# setInverse      = set the cached value (inverse of the matrix)
# getInverse      = get the cached value (inverse of the matrix)

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        r <- NULL
        set <- function(y) {
                x <<- y
                r <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) r <<- inverse
        getinverse <- function() r
        list (set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         r <- x$getinverse()
         if (!is.null(r)) {
                  message("retrieving cached data")
                  return(r)
         }
         data <- x$get()
         r <- solve(data, ...)
         x$setinverse(r)
         r
## Return a matrix that is the inverse of 'x'
}
