## The functions given here set and get the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
	x <<- y
	inv <<- NULL
}
get <- function() x
setInverse <- function(invrse) inv <<- invrse
getInverse	<- function() inv
list(set = set,get = get,setInverse = setInverse, getInverse = getInverse)
}


## Return inverse of x 
## if it exists return from cache
## if it doesn't compute and return

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if(!is.null(inv)){
	print("Getting inverse from memory, please wait...")
	return(inv)
}
mtrx <- x$get()
inv <- solve(mtrx)
x$setInverse(inv)
inv
}
