## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

##There are 2 functions - 1. makeCacheMatrix and 2. cacheSolve
## makeCacheMatrix function has set,get,setinverse and getinverse functions in it.
   
 makeCacheMatrix <- function(x = matrix()){   
       inv <- NULL                 ##starting NULL
       set <- function(y){        
           x <<- y
           inv <<- NULL
       } 
       
       get <- function() {x}   ##This function would help in getting inverse of matrix x
       setinverse <- function(inverse) {inv <<- inverse} 
       getinverse <- function() {inv}
       list(set = set, get = get, setinverse = setinverse , getinverse = getinverse)
}
  
     cacheSolve <- function(x,...){     ##this function is for getting cache data
         inv <- x$getinverse()
         if(!is.null(inv)){             ##checks whether inverse is NULL
             message("getting cached data")
           return(inv)                ## then return inverse value
        }
         
        m <- x$get()
         inv <- solve(m,...)          ##this is for calculating inverse values 
         x$setinverse(inv)
         inv                   ## returns inverse of the matrix
}
     