## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function set / get the matrix 
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL

        # store the matrix in variable
        set <- function(y) {
                x <<- y
                m <<- NULL
        }

        # retrieve the matrix from variable
        get <- function() x

        # store the matrix into cache
        setmatrix <- function(i) m <<- i

        # retrieve the matrix from cache
        getmatrix <- function() m

        # return the list of functions
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()

        # if the matrix already exists in cache, just return it
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        # otherwise, retrieve the matrix and calculate its inverse and store at cache
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
