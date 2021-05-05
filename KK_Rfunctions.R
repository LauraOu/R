KK_filter = function(x, pct = 0.3, row = T)
{
  filt = apply(x, ifelse(!row, 2, 1), function(i){sum(i == 0)}) / dim(x)[ifelse(row, 2, 1)] < pct
  if(row){return(x[filt, ])}
  else{return(x[ ,filt])}
}