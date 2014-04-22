## Un par de funciones que invierten la matix

## esta funcion crea una matix especial que da vuelta el objeto

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
        x <<- y
        inv <<- NULL
}
get <- function() x
setInverse <- function(solveMatrix) inv <<- solveMatrix
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## esta funcion computa el resultado inverso de la funcion "makeCachematrix"

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv      
}
