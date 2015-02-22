## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## The code
    #mat <- matrix(3:6, 2,2)
    imat <- NULL
    set <- function(mat) {
        x <<- mat
        imat <<- NULL
    }
    get <- function() x
    setInverse <- function(inv) imat <<- inv
    getInverse <- function() imat
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    solve(x)
    imat <- x$getInverse()
    if(!is.null(imat)) {
        message("getting cached data")
        return(imat)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(imat)
    imat
    print(imat)
}
