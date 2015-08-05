setwd("C:/Users/hliu/Documents/R_study/R programming/assignment_3/rprog-data-ProgAssignment3-data")
home = getwd()
files = dir(home, pattern="*.csv", full.names = TRUE)
outcome = read.csv(files[2], colClasses = 'character')
names(outcome)
death_rate_heart_attack = as.numeric(outcome[, 11])


best = function(sta, disease) {
  if(!(sta %in% outcome[, 7])){print('invalid state')}
  else if(!(disease %in% c('heart failure', 'heart attack', 'pneumonia'))){print('invalid outcome')}
  else {
    sub = subset(outcome, state == sta)
    
    if(disease == 'heart attack'){
      sub_order = sub[order(as.numeric(sub[, 11]), sub[, 2]), ]
    }
    
    if(disease == 'heart failure'){
      sub_order = sub[order(as.numeric(sub[, 17]), sub[, 2]), ]
    }
    
    if(disease == 'pneumonia'){
      sub_order = sub[order(as.numeric(sub[, 23]), sub[, 2]), ]
    }
    
    sub_order[1, 2]
  }
}




rankhospital = function(sta, disease, rank) {
  if(!(sta %in% outcome[, 7])){print('invalid state')}
  else if(!(disease %in% c('heart failure', 'heart attack', 'pneumonia'))){print('invalid outcome')}
  else {
    sub = subset(outcome, state == sta)
    
    if(disease == 'heart attack'){
      sub_order = sub[order(as.numeric(sub[, 11]), sub[, 2]), ]
    }
    
    if(disease == 'heart failure'){
      sub_order = sub[order(as.numeric(sub[, 17]), sub[, 2]), ]
    }
    
    if(disease == 'pneumonia'){
      sub_order = sub[order(as.numeric(sub[, 23]), sub[, 2]), ]
    }
    
    if(rank == 'best'){rank = 1}
    if(rank == 'worst'){rank = dim(sub_order)[1]}
    
    sub_order[rank, 2]
  }
}
