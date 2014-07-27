##Makes a list of fuctions to cache the matix inverse
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


## computes the inverse of a matrix unless it is stored in the makecachematrix

cacheSolve <- function(mat, ...) {
        i <- mat$getInverse()
    if ( ! is.null(i)) {
        print("getting cached data")
        return(i)
    }
    i <- solve(mat$get())
    mat$setInverse(i)
    i
}
