x = vector('numeric', length = 10)
x1 = as.numeric(x)
x2 = as.character(x)

m = matrix(1:6, nrow = 2, ncol = 3)
dim(m)
x = 1:4
y = 5:8
m = cbind(x, y)
m = rbind(x, y)
is.na(m)

f = data.frame(foo = 1:4, bar = c("A","B","C",'D'))
names(f) = c('test1', 'test2')

m = matrix(1:10, nrow = 2, ncol = 5)
dimnames(m) = list(c('a', 'b'), c('a', 'b', 'c', 'd', 'e'))