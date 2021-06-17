## Create a matrix that cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    } #the purpose of set is to redefine x without asigning a new value to makeCacheMatrix again
    get <- function() x
    setinverse <- function(n) m <<- n #update the value of m
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
        m <- x$getinverse()
    if(!is.null(m)) {
        message
    ("getting cached data")
    return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
