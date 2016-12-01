## Put comments here that give an overall description of what your
## functions do
   ## These funtions help in computing the invesre of a matrix and then store the inverse in cache so that we don't have to calculate them again and again.
   ## Week 3 assignment, Github user- Naveenyadav16
## Write a short comment describing this function
## this funtion creates a special "matrix" object that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) { 
  inv<- NULL                             
  set<- function(y) {                       
    x<<- y                                 
    inv<<- NULL                            
  }
  get <- funtion() x                       
  setinverse<- function(inverse) inv<<- inverse   
  getinverse <- function() inv                    
  list(set=set, get=get, setinverse= setinverse, getinverse= getinverse)  ## as we wanted the object to be a list of funtions 
                                                                                                            
}


## Write a short comment describing this function
    ## This function solves for the inverse of the matrix, but first it searches for the stored value in the cache if the inverse matrix is not 
    ## found then it calculates it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data<- x$get()
  inv<- solve(data,...)
  x$setinverse(inv)
  inv
}
