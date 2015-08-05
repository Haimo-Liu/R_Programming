# As we all have known that matrix inversion is usually a costly computation 
# and there may be some benefit to caching the inverse of a matrix rather 
# than compute it repeatedly. Please find the two functions written below that
# are used to cache the inverse of a square matrix when necessary.

# makeCacheMatrix: This function creates a special "matrix" object that can 
# cache its inverse.makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, 
       setinverse=setinverse, 
       getinverse=getinverse)
}


# cacheSolve returns the inverse of the matrix. This function first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.
# This function assumes that the matrix is always invertible.



cacheSolve <- function(x, ...) {
  inver <- x$getinverse()
  if(!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  inver <- solve(data, ...)
  x$setinverse(inver)
  inver
}


# example
# > test=matrix(c(1,2,3,4),2,2)
# > testm=makeCacheMatrix(test)
# > testm$get()
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4

# when running the first time while there is no cache stored:
# > cacheSolve(testm)
# [,1] [,2]
#  [1,]   -2  1.5
#  [2,]    1 -0.5

# when running the second time to retrieve the cache:
# > cacheSolve(testm)
#  getting cached data
#  [,1] [,2]
#  [1,]   -2  1.5
#  [2,]    1 -0.5 
