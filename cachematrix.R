 cacheSolve calculates the inverse of the matrix.
# If the inverse is already cached, it retrieves it.

cacheSolve <- function(x, ...) {
  
  inverse <- x$getinverse()
  
  if (!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  
  data <- x$get()
  
  inverse <- solve(data, ...)
  
  x$setinverse(inverse)
  
  inverse
}
