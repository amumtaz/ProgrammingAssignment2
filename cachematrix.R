## Put comments here that give an overall description of what your
## functions do



## This function sets the default values for matrix (x) and its inverse (ix)
## r = rows
## c = columns
## The default for ix is NULL matrix
setVals <- function(a,r,c){
    x <<- a
    ix <<- matrix(,r,c)
}

## This function returns the value of matrix (x) whatever it is last set to
getVals <- function() {
    x
#    print(x)
}


## This function calculates the inverse of a given matrix(a) and returns (ix) as its inverse
setInv <- function(a){
    ix <<- solve(a)
#    print(ix)
    return(ix)
}

## The function simply retrieves the last set value of inverse matrix (ix)
getInv <- function() {
    ix
#    print(ix)
}

# The function sets up values for the given matrix (x) and a NULL for its inverse (ix). 
# To set values it calls setVals function to which it passes the following:
## given matrix (x), and rows (r) and columns (c)

makeMatrix <- function(x,r,c) {
#    print(x) 
    result <- setVals(x,r,c)
#    print(result)
#    getVals()
}

## This function gets the value of given matrix (x) and calculates its inverse
## To calculate the inverse, it calls function setVals and passes given matrix to it.

makeSolve <- function(x){
    ix <- getInv()
    if(is.null(ix)) {
        message("getting cached data")
        return(ix)
    }
    r <- getVals() ## Get the value of the matrix that needs to be inversed
    rr <- setInv(r) ## Do the inverse of given matrix
    rr 
}

## Test cases to see if it solves the inverse for a given matrix (mat)
#mat <- matrix(13:16, 2,2)
#makeMatrix(mat,2,2)
#makeSolve(mat)

#mat <- matrix(11:18, 2,2)
#makeMatrix(mat,2,2)
#makeSolve(mat)

