## Put comments here that give an overall description of what your
## functions do
## These two functions together compute the inverse of a matrix. 
## They create a special "matrix" object, which store the matrix and caches the inverse.

## Write a short comment describing this function
##The makeCacheMatrix is a function that makes a special "matrix", which can cache the inverse. 
##It contains four parts; setting the value of the matrix, getting the value of the matrix, setting the value of the inverse, and getting the value of the inverse.
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x<<-y
    i<<-NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" made from the function above if it has not already been calculated.
##If it has and the matrix has not changes this function will retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get ()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}

##Example of use: 
k <- matrix(1:4, 2, 2)
cacheSolve(makeCacheMatrix(k))
    [,1] [,2]
[1,] -2  1.5
[2,]  1 -0.5

65d53cd1313c4b8d2fba37778a88a456df50e702
