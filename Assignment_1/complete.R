complete = function(directory, id = 1:332) {
  home = getwd()
  fpath = file.path(home, directory)
  files = dir(fpath, pattern="*.csv", full.names = TRUE)
  fnames = files[id]
  
  count_case = function(fname) {
    sum(complete.cases(read.csv(fname)))
  }
  
  case = unlist(lapply(fnames, count_case))
  
  data.frame(id = id, nobs = case)

}