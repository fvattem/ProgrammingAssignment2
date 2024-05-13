## This pair of functions allows for caching the inverse of a matrix.

## The 'makeCacheMatrix" function creates a special matrix object that can cache its inverse, 

makeCacheMatrix <- function(x = matrix()) {
  x<-NULL
  inverse<-NULL
  set <-function(matrix){
    x<<-matrix
    inverse<<-NULL
  }
  get <-function(){
    x
  }
  setInverse<-function(){
    inverse<<-solve(x)
    
  }
  getInverse<-function(){
    inverse
    
  }
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)

}


## The CacheSolve' function computes the inverse of the special matrix object, utilising caching if available

cacheSolve <- function(x, ...) {
  inverse<-x$getInverse()
  ## Id inverse is cached, return it
  if(!is.null(inverse)){
    message("Getting cached inverse")
    return(inverse)
  }
        ## If inverse is not cached, compute it, cach it, and return
x$setInverse
x$getInverse
  }
