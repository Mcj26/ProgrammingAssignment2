## Caching the Inverse of a Matrix

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
         inv <- NULL
        set <- function(y){
        m <<- y
        inv <<- NULL
        }
        get <- function()m
        setInverse <- function(inv)
        getInverse <- function() inv
        list(set = set,
             get = get, 
             setInverse = setInverse,
             getInverse = getInverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(m, ...) {
       inv <- m$getInverse()
       mat <- m$get()
       inv <- solve(mat,...)
       m$setInverse (inv)
        ## Return a matrix that is the inverse of 'm'
}
