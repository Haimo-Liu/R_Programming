for (i in 1:10) {
  print(i)
}


x = matrix(1:6, 2 ,3)
for (i in 1:2){
  for (j in 1:3){
    print(x[i, j])
  }
}




for (i in 1:100){
  if (i <= 20) {
    next
  }
  else {
    print(i)
  }
}