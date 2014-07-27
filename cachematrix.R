## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mat = matrix()) {
 i <- NULL
    set <- function(y) {
        mat <<- y
        i <<- NULL
    }
    get <- function() mat
    setInverse <- function(inverse) i <<-inverse
    getInverse <- function() i
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(mat, ...) {
        i <- mat$getInverse()
    if ( ! is.null(i)) {
        print("getting cached data")
        return(i)
    }
    i <- solve(mat$get())
    mat$setInverse(i)
    i
