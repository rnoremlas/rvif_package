Theorem <-
function(y, X, alfa=0.05){
  n = nrow(X)
  p = ncol(X) 
  #
  reg = lm(y~X+0) # equivalent to lm(y~X[,-1]): same values of beta, var.beta and sigma2
  beta = as.double(reg$coefficients)
  var.beta = as.double(summary(reg)[[4]][,2])^2
  sigma2 = summary(reg)[[6]]^2
  #
  Xqr=qr(X)
  P = qr.R(Xqr)
  beta.o = P%*%beta
  #
  t.teo = qt(1-alfa/2,n-p)
  t.exp = as.double(summary(reg)[[4]][,3])
  c0 = numeric()
  c3 = numeric()
  RVIFs = RVIF(X, l_u=FALSE, graf=FALSE)[[1]]
  Affects = array("No", p)
  Scenario = array("", p)
  for (i in 1:p){
    c0[i] = (beta[i]/(sqrt(sigma2)*t.teo))^2
    c3[i] = ((t.teo/beta.o[i])^2)*var.beta[i]
    #c3[i] = ((beta[i]/beta.o[i])*(t.teo/t.exp[i]))^2
    levels = c(c0[i], c3[i])
    #
    if((c3[i]<RVIFs[i])&(RVIFs[i]<c0[i])){Scenario[i]="a.1"}
    minimum = min(levels)
    if(RVIFs[i]<minimum){Scenario[i]="a.2"}
    maximum = max(levels)
    if(RVIFs[i]>maximum){Scenario[i]="b.1"}
    if((c0[i]<RVIFs[i])&(RVIFs[i]<c3[i])){Scenario[i]="b.2"}
    if (Scenario[i]=="a.2"){Affects[i]="Contradiction"}
    if (Scenario[i]=="b.1"){Affects[i]="Yes"}
  }
  #
  output = data.frame(RVIFs, c0, c3, Scenario, Affects)
  return(output)
}
