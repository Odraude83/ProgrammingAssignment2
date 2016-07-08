## makeCacheMatrix is function that creates 4 functions
# set, get, setinverse, and getinverse and returns a list with these 4 functions
# set stores the input matrix (x) and sets the inverse to null
# get retrives the stored matrix (x)
# setinverse stores the given input (invMatrix) to inv
# getinverse retrives the stored inverted matrix inv 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(invMatrix) inv <<- invMatrix
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)    
    
    
}


## cacheSolve will use function getinverse from makeCacheMatrix to 
# retrieve the inverse matrix, then check if the inverse matrix has already been 
# calculated. If it has been it outputs the stored value
# if it hasn't, it calls get() from makeCacheMatrix to retrieve the matrix and 
# solves the matrix for it's inverse matrix and stores it in inv
# then calls setinverse() from makeCacheMatrix to store the newly calculated
# inverse matrix and returns the inverted matrix

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(m)
    inv
    ## Return a matrix that is the inverse of 'x'
}
