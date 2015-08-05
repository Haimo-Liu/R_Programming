f = function(a, b, c) {
  for (i in 1:a) {
    print(b+c+i)
  }
}

f(5, 5, 5)




make.power = function(n) {
  pow = function(x){
    x^n
  }
  pow
}

cube = make.power(3)
cube(2)