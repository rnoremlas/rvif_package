plot.cv_vif <-
function(x){
  if (!inherits(x, "cv_vif")) {    # no sé por qué esto no lo representa (modifico 'cv_vif' a falta de que esto funcione)
    cvs = -2:10
    fivs = -2:10
    plot(cvs, fivs, type = "n", xlim=c(0, max(cvs)+2), ylim=c(0, max(fivs)), xlab="Coefficient of Variation", ylab="Variance Inflation Factor")
    abline(h=0, col="black", lwd=1, lty=2)
    abline(v=0, col="black", lwd=1)
    #
    text(2, 5, "The 'cv_vif' function has indicated an error message", pos=4, col="blue")
    text(2, 4.5, "It is not possible to display the scatter plot", pos=4, col="blue")
  } else {
    cvs = x[[1]]
    fivs = x[[2]]
    #
    plot(cvs, fivs, type = "n", xlim=c(-5, max(cvs)+5), ylim=c(-10, max(fivs)+10), xlab="Coefficient of Variation", ylab="Variance Inflation Factor")
    for (i in 1:length(cvs)){
      points(cvs[i], fivs[i], col = "blue", pch = 20)
    }
    abline(h=10, col="red", lwd=2, lty=2)
    abline(h=0, col="black", lwd=1)
    abline(v=0.1002506, col="red", lwd=2, lty=3)
    #abline(v=0, col="black", lwd=1)
    #
    etiquetas = c()
    for(i in 1:length(cvs)){etiquetas = c(etiquetas, i+1)}
    text(cvs, fivs, labels = etiquetas, pos=1)
  }
}
