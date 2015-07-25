## This pair of functions will cache 
## the inverse of a matrix.

## This function creates a special "matrix" object
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        
        ## Message for debugging purposes
        message("hello from inside makeCacheMatrix")
    
        s <- NULL
        
        ## Allows the matrix to be set or changed
        ## after the main function has been called
        set <- function(y) {
                x <<- y
                s <<- NULL
        }

        get <- function() x
        setinverse <- function(solve) s <<- solve
        getinverse <- function() s
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has 
## already been calculated (and the matrix has not ch1anged), 
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        message("hello from inside cacheSolve")
    
}
