x = data.frame(a = 1:10, b = rnorm(10))
lapply(x, mean)

x = list(a = matrix(1:6, 2, 3), b = matrix(1:10, 5, 2))
lapply(x, function(p) p[, 1])
#sapply is a simplified version of lapply#

x = matrix(rnorm(200), 20, 10)
apply(x, 1, mean)
apply(x, 2, sum)


x = c(rnorm(10,1), rnorm(10, 2), rnorm(10, 3))
f = gl(3, 10)
tapply(x, f, mean)
split(x, f)
lapply(split(x, f), mean)