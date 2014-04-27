## Write a short comment describing this function
## Creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) 
  {
  IV <- NULL
  set  <- function(y){
    x <<- y
    IV <<- NULL 
  }
  get  <- function() x
  setinverse  <- function(inverse) IV  <<- inverse
  getinverse  <- function() IV
  list(set= set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)

}


## Write a short comment describing this function
## Computes the inverse. If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cach
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...)
  {
  IV<- x$getinverse()
  if (!is.null(IV)){
    message("getting cached data")
    return(i)
  }
  data  <- x$get()
  IV <- solve(data, ...)
  x$setinverse(IV)
  IV
}
