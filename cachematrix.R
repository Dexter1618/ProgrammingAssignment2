## This function is similar to makeVector() as given in README.md

makeCacheMatrix<-function(x=matrix())
{
        INVERSE<-NULL
        setMatrix<-function(y)
        {
                x<<-y
                INVERSE<<-NULL
        }
        getMatrix<-function()
        {
                x
        }
        setInverse<-function(I)
        {
                INVERSE<<-I
        }
        getInverse<-function()
        {
                INVERSE
        }
        
        list(setMatrix=setMatrix,getMatrix=getMatrix,setInverse=setInverse,getInverse=getInverse)
}

## This function is similar to cachemean() in README.md
## This function caches the value of inverse of a non-singular matrix
## Here, the formal argument 'x' is a list of kind of 
## an accessor-mutator functions for the matrix passed to makeCacheMatrix()

cacheSolve <- function(x, ...)
{
        INVERSE<-x$getInverse()
        
        if(!is.null(INVERSE))
        {
                message("\t The inverse value was previously calculated and cached in memory. So using the cached value!")
                return(INVERSE)
        }
        
        INVERSE<-solve(x$getMatrix(),...)
        
        x$setInverse(INVERSE)
        
        INVERSE
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
