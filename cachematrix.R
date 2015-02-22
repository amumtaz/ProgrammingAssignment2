## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

setVals <- function(a,r,c){
    x <<- a
    ix <<- matrix(,r,c)
}

getVals <- function() {
    x
#    print(x)
}

setInv <- function(a){
    ix <<- solve(a)
#    print(ix)
    return(ix)
}

getInv <- function() {
    ix
#    print(ix)
}

makeMatrix <- function(x,r,c) {
#    print(x) 
    result <- setVals(x,r,c)
#    print(result)
#    getVals()
}

makeSolve <- function(x){
    ix <- getInv()
    if(is.null(ix)) {
        message("getting cached data")
        return(ix)
    }
    r <- getVals()
    rr <- setInv(r)
    rr
}

#mat <- matrix(13:16, 2,2)
#makeMatrix(mat,2,2)
#makeSolve(mat)

#mat <- matrix(11:18, 2,2)
#makeMatrix(mat,2,2)
#makeSolve(mat)

