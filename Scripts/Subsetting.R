x = c('a','b','c','d','e')
x[1:4]
u = x>'a'
x[u]

x = list(foo = 1:4, bar = 0.5)
x[[1]]
x$bar
x[['bar']]
x['bar']

x = matrix(1:6, 2, 3)
dimnames(x) = list(c('test1','test2'), c('col1', 'col2', 'col3'))
x[1,2]
x[1,2, drop = FALSE]

y = matrix(nrow = 2, ncol = 3)
y[2,3] = 8
bad = is.na(y)
y[!bad]


x = c(1,2,3, NA, 4, NA, 5)
y = c(6, 7, 7, NA, 9, NA, 9)
good = complete.cases(x, y)
x[good]
y[good]

airquality[1:6, ]
good = complete.cases(airquality)
airquality[good, ][1:6, ]





