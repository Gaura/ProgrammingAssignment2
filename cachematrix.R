## The functions given here set and get the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {			# x should be matrix input
inv <- NULL											#initialize inverse as NULL	
set <- function(y){									# set the value of x
	x <<- y																	
	inv <<- NULL									#set the value of inverse as null
}
get <- function() x									#get x value
setInverse <- function(invrse) inv <<- invrse 		#set inverse value
getInverse	<- function() inv
#return a list of functions
list(set = set,get = get,setInverse = setInverse, getInverse = getInverse)
}


## Return inverse of x 
## if it exists return from cache
## if it doesn't compute and return

cacheSolve <- function(x, ...) {
inv <- x$getInverse() #get inverse of matrix
if(!is.null(inv)){	#check if the inverse is present
	print("Getting inverse from memory, please wait...")
	return(inv) #Return inverse
}
mtrx <- x$get() #get the value of x
inv <- solve(mtrx,...) #solve for the matrix
x$setInverse(inv) #set inverse
inv 			  #return inverse
}
