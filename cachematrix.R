##  Coursera task number2
## It calculate the inverse matrix once, for a cache object.

## The program will make a cacheMatrix object for an inverse matrix

makeCacheMatrix <- function(x = matrix()) {
cachedInverse <- NULL
set <- function(m){
  X<<- m
  cachedInverse <<- NULL
}
get<- function() x
setInverse <- function(inverse) cachedInverse <<- inverse
getInverse <- function() cachedInverse
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## this function works by returning a object that is the inverse of cacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invFun <- x$getInverse()
  if(!is.null(inFun)){
    message("get cache data")
    return(invFun)
  }
  data <-x$get()
  invFun <- solve(data, ...)
  x$setInverse(invFun)
  invFun
}
