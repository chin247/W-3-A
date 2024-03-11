

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(), t) {
     
     # set.seed number for reproducibility
     set.seed(t)       
     
      # Generate the random matrix with x representing the # squared of observation 
      # and columns
       mtx<-matrix(rnorm(x^2), ncol = x)

      # return the cache
     return(mtx)

}

imx<-makeCacheMatrix(3, 78) # a stored matrix object 

## Write a short comment describing this function

cacheSolve <- function(x) { ## Return a matrix that is the inverse of 'x'
    
     tryCatch({ # The tryCatch() captures any errors that occur if the 
          # the inverse of the matrix can not be computed by solve(), 
          inv<-solve(x) # computes and returns the inverse of the x = matrix
          return(inv)
     }, error = function(e) { # the error handling function that returns "Error" if the solve() incounters an error
          return("Error: Invalid matrix to compute an inverse")  
          
     })
     
}


cacheSolve(imx) # produce an inverse of the matrix created by makeCacheMatrix (x,t)
