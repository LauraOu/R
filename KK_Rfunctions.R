# Build date: Wed May 05 19:50:42 2021
# 0.0? filt matrix 
KK_filter = function(x, pct = 0.3, row = T)
{
  filt = apply(x, ifelse(!row, 2, 1), function(i){sum(i == 0)}) / dim(x)[ifelse(row, 2, 1)] < pct
  if(row){return(x[filt, ])}
  else{return(x[ ,filt])}
}
# Last edit: Wed May 05 19:52:19 2021
