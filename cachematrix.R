## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
		set <- function(y) {
			x <<- y
			m <<- NULL ##store a matrix in cache
		}
		get <- function() x ##get matrix
		setInverse <- function(mean) m <<- mean ##set inverse matrix
		getInverse <- function() m ##get inverse of matrix
		list(set = set, get = get,
				setInverse = setInverse,
				getInverse = getInverse) ## create a list of functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse		
        if(!is.null(m)) {
        	message("getting cached data")		sent message indicating this is just cached
        	return(m) 		## return the cache
        }
        data <- x$get()		## get the matrix used by makeCacheMatrix function
        m <- solve(data, ...)		##calculat the inverse of the matrix
        x$setInverse(m) 	## store the inverse matrix in cache using the makeCacheMatrix function
}
