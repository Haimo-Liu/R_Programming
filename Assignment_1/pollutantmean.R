pollutantmean = function(directory, pollutant, id = 1:332) {
  home = getwd()
  fpath = file.path(home, directory)
  files = dir(fpath, pattern="*.csv", full.names = TRUE)
  tables = lapply(files[id], read.csv)
  frame = do.call(rbind.data.frame, tables)
  
  bad = is.na(frame[, pollutant])
  mean(frame[, pollutant][!bad])
}


