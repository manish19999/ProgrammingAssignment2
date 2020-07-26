 makecacheMatrix <- function(x=matrix()){
+    inv <- NULL
+    set <- function(y){
+    x <<- y
+    inv <<- NULL
+  }
+  get <- function()x
+  setinverse <- function(inverse)inv <<- inverse
+  getinverse <- function()inv
+  list(set=set, get=get, 
+    setinverse=setinverse,
+    getinverse=getinverse)
+ }
> 
> cachesolve <- function(x,...) {
+    inv <- x$getinverse()
+    if(!is.null(inv)) {
+     message("getting cached data")
+     return(m)
+   }
+   data <- x$get()
+   inv <- inv(data,...)
+   x$setinverse(inv)
+   inv
+   }
