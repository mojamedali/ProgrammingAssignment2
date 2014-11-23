## Put comments here that give an overall description of what your
## functions do

## The function creates a matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y)
    {
        x <<- y
        inv <<- NULL
    }
    
    get <- function()
    {
        x
    }
    
    setinv <- function(inverse)
    {
        inv <<- inverse
    }
    
    getinv <- function() 
    {
        inv
    }
    
    list(set = set,
        get = get,
        setinv = setinv,
        getinv = getinv)
}


## The function computes the inverse of the matrix returned by makeCacheMatrix function. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve it from the cache.

cacheSolve <- function(x, ...) {
        
        inv <- x$getinv()
        if(!is.null(inv)) {
                return(inv)
        }
        matrix <- x$get()
        inv <- solve(mat)
        x$setinv(inv)
        inv
}
